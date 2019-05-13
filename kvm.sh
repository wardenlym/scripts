sudo apt-get update && sudo apt-get install -y uml-utilities qemu-kvm bridge-utils virtinst libvirt-daemon-system libvirt-clients libguestfs-tools
wget https://cloud-images.ubuntu.com/releases/18.04/release/ubuntu-18.04-server-cloudimg-amd64.img
wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img

sudo virt-customize -a bionic-server-cloudimg-amd64.img --root-password password:root


sudo tunctl -t tap0
sudo ifconfig tap0 up
sudo brctl addif virbr0 tap0
sudo brctl show

# sudo virt-customize -a bionic-server-cloudimg-amd64.img --uninstall cloud-init


sudo qemu-img resize bionic-server-cloudimg-amd64.img +20G

cp bionic-server-cloudimg-amd64.img orig.qcow2
sudo virt-resize --expand /dev/sda1 orig.qcow2 bionic-server-cloudimg-amd64.img

qemu-img info bionic-server-cloudimg-amd64.img

sudo virt-filesystems --long -h --all -a bionic-server-cloudimg-amd64.img

sudo qemu-system-x86_64 -enable-kvm -hda bionic-server-cloudimg-amd64.img  -m 2048 -smp 2,cores=2,threads=1 -net nic -net tap,ifname=tap0,script=no -curses

dhclient ens3



growpart /dev/sda 1
resize2fs /dev/sda1

https://serverascode.com/2018/06/26/using-cloud-images.html

sudo virt-filesystems --long -h --all -a bionic-server-cloudimg-amd64.img

sudo virsh list --all

