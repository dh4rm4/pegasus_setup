echo "[+] Install basics stuff"
#sudo cp sources.list /etc/apt/sources.list
#sudo apt update
#sudo apt upgrade -yy
#sudo apt install -yy kde-plasma-desktop htop git tree xclip firmware-iwlwifi
#sudo apt purge -yy kwrite konqueror kwalletmanager plasma-discover plasma-discover-common
#sudo apt --fix-broken install
#sudo apt-get autoremove -yy
cd basics

echo "[+] Setup git"
git config --global user.name "dh4rm4"
git config --global user.email "dh4rm4@protonmail.com"

echo "[+] Install Oh-my-zsh"
#cd Oh-my-zsh/
#./get_oh_my_zsh.sh
#cd ..

echo "[+] Setup emacs"
cd emacs
./setup_emacs.sh
cd ..

echo "[+] Setup Fonts"
cd fonts
./setup_fonts.sh
cd ..

echo "[+] Setup Terminator"
cd terminator
sudo apt install -yy terminator
mkdir -p ~/.config/terminator/
cp config ~/.config/terminator
cd ..

echo "[+] Setup Vivaldi"
cd vivaldi
sudo dpkg -i vivaldi-stable_2.3.1440.61-1_amd64.deb
sudo apt update --fix-missing -yy
sudo apt-get install -f
mkdir -p ~/.config/vivaldi/Default
cp Preferences ~/.config/vivaldi/Default/
cd ..
