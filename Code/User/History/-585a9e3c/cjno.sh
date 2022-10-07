#/bin/bash
startdir=$(pwd)
mkdir ~/GitClones
cd ~/GitClones
echo "Cloning Repositories"
git clone https://aur.archlinux.org/yay.git 
git clone https://github.com/DownLyfter/DotFiles.git 
cd yay 
yes | makepkg -si
echo "Installed yay, configurig config files"
echo "Installing pacman pacakges."
yes |sudo pacman -Syu $(cat package.txt) 
echo "Finished installing pacman packages."
cd $startdir
sudo systemctl enable $(cat services.txt)
cp ../DotFiles
cp pacman.conf /etc/pacman.conf
mkdir ~/.config	
mv * -r ~/.config
mv .* ~/.config 
yes | yay -S shell-color- scripts 
sudo wget -O /etc/bash.command-not-found https://gitlab.com/dwt1/bash-insulter/-/raw/master/src/bash.command-not-found
echo "Removing orphans."
sudo pacman -R $(pacman -Qqdt)
echo "Finished"

