#!/bin/bash


# make a large logical volume for us to store our kvm storage on.


function createVgStorage() 
{
    # add a logical volume or physical volume. adjust the pv according to disk space and which disk does not have a physical volume configured.
    vgreate lab_kvm_storage /dev/sdb
    
    # make the logical volume here.
    lvcreate -l +100%FREE -n lab_kvm_lv lab_kvm_storage
    
    # make the file system
    mkfs.xfs /dev/mapper/lab_kvm_storage-lab_kvm_lv
}


function updateFstab()
{
    # update the fstab configuration as so
    # /dev/mapper/lab_kvm_storage-lab_kvm_lv      /var/lib/libvirt/images xfs  defaults     0   0
}

function mountVgStorage() 
{
    # mount the file system after having adjusted the fstab
    mount -a
}

function createStoragePoolVirsh()
{
    # build out a virsh pool to use.
    virsh pool-define-as lab_kvm_storagepool --type dir --target /var/lib/libvirt/images
    
    # set autostart to bind to the pool we have created.
    virsh pool-autostart lab_kvm_storagepool
    
    # start the pool to use.
    virsh pool-start lab_kvm_storagepool
    
    # list all of the pools 
    virsh pool-list
    virsh pool-list --all --details
}
