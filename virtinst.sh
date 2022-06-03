#!/bin/bash
set -o xtrace
sudo apt install libguestfs-tools -y
apt search virtinst
sudo apt install virtinst -y
sudo apt install libvirt-daemon-system -y
export LIBGUESTFS_DEBUG=1 LIBGUESTFS_TRACE=1
set +o xtrace 
echo " - >>>>> qemu-img resize cloudimg-arch.img 40G"
echo " - >>>>> sudo virt-customize -a cloudimg-arch.img --root-password password:******"
echo " - >>>>> On AARCH64 install apt install qemu-efi"
