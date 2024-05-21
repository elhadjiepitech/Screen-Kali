# Ecran-Kali-Scren
Liste de commande pour Kali spéciale


  294  sudo apt update
  295  clear
  296  sudo apt install -y nvidia-detect
  297  sudo apt install -y linux-headers-amd64
  298  sudo apt install -y hashcat
  299  sudo apt install -y clinfo
  300  clear
  301  lspci | grep -E "VGA|3D\n"
  302  apt-get install ocl-icd-libopencl1 nvidia-cuda-toolkit
  303  sudo apt-get install ocl-icd-libopencl1 nvidia-cuda-toolkit
  304  sudo update-grub
  305  sudo apt-get install nvidia-driver nvidia-xconfig
  306  nvidia-xconfig - query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
  307  reboot
  308  sudo apt update
  309  sudo apt upgrade
  310  clear
  311  sudo apt update
  312  sudo apt upgrade
  313  clear
  314  lspci | grep -E "VGA|3D"
  315  echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
  316  sudo echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
  317  echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
  318  clear
  319  sudo update-initramfs -u
  320  sudo apt update
  321  sudo apt install -f
  322  echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf\n
  323  sudo update-initramfs -u
  324  reboot
  325  lsmod | grep -i nouveau\n
  326  sudo apt-get install nvidia-driver nvidia-xconfig\n
  327  nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6\n
  328  sudo nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6\n
  329  clear
  330  sudo vim /etc/X11/xorg.conf\n
  331  sudo nano /etc/X11/xorg.conf\n
  332  sudo nano /usr/share/gdm/greeter/autostart/optimus.desktop\n
  333  sudo nano /etc/xdg/autostart/optimus.desktop\n
  334  sudo reboot\n
