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
  virst-install --network bridge:virbr0 --name VMNAME \
    --os-variant=YOURVARIANTNAME --ram=RAMVALUE# --vcpus=CPUCOUNT \ 
    --disk path=/var/lib/libvirt/images/VMNAME- s.qcow2,format=qcow2,bus=virtio,size=5 \
    --graphics none --location=/path/to/.iso \
    --extra-args="console=tty0 console=ttyS0,115200" --check all=off
}
