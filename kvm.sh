sudo apt-get update && sudo apt-get install -y uml-utilities qemu-kvm bridge-utils virtinst libvirt-daemon-system libvirt-clients libguestfs-tools
wget https://cloud-images.ubuntu.com/releases/18.04/release/ubuntu-18.04-server-cloudimg-amd64.img

sudo virt-customize -a ubuntu-18.04-server-cloudimg-amd64.img --root-password password:root

sudo qemu-system-x86_64 -enable-kvm -hda ubuntu-18.04-server-cloudimg-amd64.img  -m 512 -net nic -net tap,ifname=tap0,script=no -curses


https://serverascode.com/2018/06/26/using-cloud-images.html