# Ecran-Kali-Screen

Prérequis et Liste des Commandes Résumées:
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
nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
reboot
sudo apt update
sudo apt upgrade
clear
sudo apt update
sudo apt upgrade
clear
lspci | grep -E "VGA|3D"
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

## Configuration Étape par Étape

NB: Liste de Commandes pour Kali Spéciale (MSI Bravo AMD & Nvidia)

1. Vérifiez que vous avez des graphiques hybrides
Assurez-vous que la sortie montre à la fois des contrôleurs Nvidia et AMD.
lspci | grep -E "VGA|3D"
2. Mettez à jour les initramfs et redémarrez
sudo update-initramfs -u
sudo reboot
3. Vérifiez que nouveau est désactivé
lsmod | grep -i nouveau
4. Installez le pilote Nvidia depuis le dépôt de Kali
sudo apt-get install nvidia-driver nvidia-xconfig
5. Trouvez l'identifiant de bus de votre carte Nvidia
nvidia-xconfig --query-gpu-info | grep 'BusID : ' | cut -d ' ' -f6
6. Générez le fichier /etc/X11/xorg.conf avec cet identifiant de bus
Créez ou éditez le fichier :
sudo nano /etc/X11/xorg.conf
Ajoutez-y le script amd&nvidia.sh en remplaçant PCI:1:0:0 par votre BusID !!!!!
7. Créez des scripts pour le gestionnaire d'affichage
Créez deux fichiers et ajoutez le contenu suivant dans les deux fichiers :
a. /usr/share/gdm/greeter/autostart/optimus.desktop
sudo nano /usr/share/gdm/greeter/autostart/optimus.desktop
b. /etc/xdg/autostart/optimus.desktop
sudo nano /etc/xdg/autostart/optimus.desktop
De dans ajoutez le contenu du script scriptDesktopPlayer.sh
c. Redémarrez et vérifiez que le pilote Nvidia est utilisé
glxinfo | grep -i "direct rendering"
