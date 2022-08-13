#!/bin/bash

# query the os to see if our intended vm is compatible
function queryforOS() 
{
  osinfo-query os
}

# make a host
function makeHost()
{
  # here we are assuming that we have a host .iso file somewhere accessible on the host.
  virt-install --network bridge:virbr0 --name test --os-variant=rocky9.0 --ram=1536 --vcpus=1 \
    --disk path=/var/lib/libvirt/images/test-os.qcow2,format=qcow2,bus=virtio,size=5 \ 
    --graphics none --location=Rocky-9.0-x86_64-minimal.iso \
    --extra-args="console=tty0 console=ttyS0,115200" --check all=off
}
