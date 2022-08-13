#!/bin/bash




function createVgStorage() 
{
    vgreate lab_kvm_storage /dev/sdb
    lvcreate -l +100%FREE -n lab_kvm_lv lab_kvm_storage
    mkfs.xfs /dev/mapper/lab_kvm_storage-lab_kvm_lv
}


function updateFstab()
{
    # update the fstab configuration as so
    # /dev/mapper/lab_kvm_storage-lab_kvm_lv      /var/lib/libvirt/images xfs  defaults     0   0
}

function mountVgStorage() 
{
    mount -a
}

function createStoragePoolVirsh()
{
    virsh pool-define-as lab_kvm_storagepool --type dir --target /var/lib/libvirt/images
    virsh pool-autostart lab_kvm_storagepool
    virsh pool-start lab_kvm_storagepool
    # list all of the pools 
    virsh pool-list
}
