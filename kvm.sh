sudo apt-get update && sudo apt-get install -y uml-utilities qemu-kvm bridge-utils virtinst libvirt-daemon-system libvirt-clients libguestfs-tools
wget https://cloud-images.ubuntu.com/releases/18.04/release/ubuntu-18.04-server-cloudimg-amd64.img
wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img

sudo virt-customize -a bionic-server-cloudimg-amd64.img --root-password password:root

sudo virt-customize -a bionic-server-cloudimg-amd64.img --uninstall cloud-init

sudo qemu-system-x86_64 -enable-kvm -hda bionic-server-cloudimg-amd64.img  -m 2048 -smp 2,cores=2,threads=1 -net nic -net tap,ifname=tap0,script=no -curses

dhclient ens3

https://serverascode.com/2018/06/26/using-cloud-images.html