#! /bin/bash
set -x # Print commands

# Re-compile the vbox modules, it will fail inserting them
sudo /sbin/vboxconfig

for i in vboxdrv vboxnetadp vboxpci vboxvideo vboxguest vboxnetflt vboxsf
do
	sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n $i)
done

# Re-start vboxdrv
sudo systemctl restart vboxdrv
