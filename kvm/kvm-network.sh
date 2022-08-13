#!/bin/bash


## Instructions for Setting up a KVM network on the host.


####
# Package Installations
####


function installkvm() 
{
    yum install virt-install qemu-kvm libvirt libguestfs-tools virt-install virt-manager -y 
    systemctl enable libvirtd
    systemctl start libvirtd
    systemctl status libvirtd
    # init 6
    modinfo kvm_intel
    modinfo kvm
}


####
# Configuration the Network on the Host - we are switching the tyep of internal network from ethernet to bridge. Our kvm instance will connect to the bridge network by default
# so we want to change the bridge ip address to that of thse hosts default.
####

# update the interface configuration filees
function updateConfiguration () 
{
    vim /etc/sysconfig/network-scripts/<nic file>
    # TYPE=Ethernet
    # BOOTPROTO=none
    # NAME=<nic name>
    # ONBOOT=yes
    # BRIDGE=virbr0
    # DEVICE=<nic name>

    vim /etc/sysconfig/network-scripts/ifcfg-virbr0
    # TYPE=BRIDGE
    # BOOTPROTO=none
    # DEVICE=virbr0
    # ONBOOT=yes
    # IPADDR=< ip addr of existing network eth...>
    # NETMASK=255.255.255.0
    # GATEWAY=192.168.<>.1

}


function enablePortForwarding() 
{
    echo net.ipv4.ip_forward = 1 > /usr/lib/sysctl.d/60-libvirtd.conf
    /sbin/sysctl -p /usr/lib/sysctl.d/60-libvirtd.conf
}


function configureFirewall() 
{
    firewall-cmd --permanent --direct --passthrough ipv4 -I FORWARD -i bridge0 -j ACCEPT
    firewall-cmd --permanent --direct --passthrough ipv4 -I FORWARD -o bridge0 -j ACCEPT
    firewall-cmd --reload
}

function updateBridgeNetwork() 
{
    # list the default virsh network
    virsh net-list
    # see the xml of network of virsh
    virsh net-dumpxml default

    # update the configuratoin - as we do not want to use the default virbr0 configuration that comes w/ kvm during installation.
    # we also want to udpate the dhcp range - as each kvm node uses dhcp for ip address assignment.
    virsh net-edit defualt
    
    # example configuration update: 

    # ..
    # <ip address="UPDATE HERE - make sure this is the ipd address defined in the virbr0 file" netmask... >
    #   <dhcp>
    #       <range start="192.168.1.20" end="UPDATE THIS" />
    #   </dhcp>
    # </ip>
    # ..



    # activate the changes to teh xml
    systemctl restart libvirtd

}



