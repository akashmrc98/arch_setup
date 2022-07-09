sudo pacman -S virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

# find file
# sudo vim /etc/libvirt/libvirtd.conf

# copy to lines to file
# unix_sock_group = "libvirt"
# unix_sock_rw_perms = "0770"

# enter following commands again
# sudo usermod -a -G libvirt $(whoami)
# newgrp libvirt
# sudo systemctl restart libvirtd.service






