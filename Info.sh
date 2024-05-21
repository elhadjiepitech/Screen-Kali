# De ma part la liste des commandes pour un hybride nvidia et amd:


sudo apt update
clear
sudo apt install -y nvidia-detect
sudo apt install -y linux-headers-amd64
sudo apt install -y hashcat
sudo apt install -y clinfo
clear
lspci | grep -E "VGA|3D"
apt-get install ocl-icd-libopencl1 nvidia-cuda-toolkit
sudo apt-get install ocl-icd-libopencl1 nvidia-cuda-toolkit
sudo update-grub
sudo apt-get install nvidia-driver nvidia-xconfig
nvidia-xconfig - query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
reboot
sudo apt update
sudo apt upgrade
clear
sudo apt update
sudo apt upgrade
clear
lspci | grep -E "VGA|3D"
echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
sudo echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
clear
sudo update-initramfs -u
sudo apt update
sudo apt install -f
echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u
reboot
lsmod | grep -i nouveau
sudo apt-get install nvidia-driver nvidia-xconfig
nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
sudo nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
clear
sudo vim /etc/X11/xorg.conf
sudo nano /etc/X11/xorg.conf
sudo nano /usr/share/gdm/greeter/autostart/optimus.desktop
sudo nano /etc/xdg/autostart/optimus.desktop
sudo reboot
