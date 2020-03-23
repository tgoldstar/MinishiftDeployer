#!/bin/bash
echo "Installing packages"
sudo apt install qemu-kvm libvirt-daemon libvirt-daemon-system -y -q --reinstall
echo "Adding user to libvirt group"
sudo usermod -a -G libvirt $(whoami)
echo "Setting the new session"
newgrp libvirt

echo "Installing kvm-driver"
sudo curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v0.10.0/docker-machine-driver-kvm-ubuntu16.04 -o /usr/local/bin/docker-machine-driver-kvm
sudo chmod +x /usr/local/bin/docker-machine-driver-kvm
