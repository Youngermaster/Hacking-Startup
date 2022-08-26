sudo apt install open-vm-tools open-vm-tools-dekstop -y
# We create the folder to mount
mkdir ~/VBoxShared

# We mount the host directory
sudo /usr/bin/vmhgfs-fuse .host:/ /home/kali/VBoxShared -o subtype=vmhgfs-fuse,allow_other
