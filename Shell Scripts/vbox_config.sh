#!/bin/bash
echo "Creating a virtual machine"
VBoxManage createvm --name ubuntu --ostype "Ubuntu-64" --register --basefolder ".\Krithik"

VBoxManage modifyvm ubuntu --ioapic on --vram 128 --memory 1536 --nic1 nat --cpus 2

VBoxManage createhd --filename ".\Krithik\ubuntu\ubuntu_DISK.vdi" --size 20000 --format VDI

VBoxManage storagect1 ubuntu --name "SATA Controller" --port 0 --device 0 --type hdd --medium ".\Krithik\ubuntu\ubuntu_DISK.vdi"

VBoxManage storagectl ubuntu --name "SATA Controller" --add sata --controller IntelAhci

VBoxManage storageattach ubuntu --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium ".\Krithik\ubuntu\ubuntu_DISK.vdi"

VBoxManage storagectl ubuntu --name "IDE Controller" --add ide --controller PIIX4

VBoxManage storageattach ubuntu --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium ".\Krithik\debian.iso"

VBoxManage modifyvm ubuntu --boot1 dvd --boot2 disk --boot3 none --boot4 none

VBoxManage startvm ubuntu