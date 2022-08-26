## Setup folders
mkdir -p ~/HackTheBox/config
mkdir -p ~/HackTheBox/machines
mkdir -p ~/HackTheBox/challenges
mkdir -p ~/GitHub/Youngermaster
mkdir -p ~/GitHub/AnotherOnes
mkdir -p ~/Pictures/Wallpapers

cp ./assets/wallpaper.png ~/Pictures/Wallpapers/
cp ./assets/wallpaper_black.png ~/Pictures/Wallpapers/
bash ./install_dependencies.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
cp ./assets/.zshrc ~/
sudo cp ./assets/fonts/* /usr/local/share/fonts/
fc-cache -v
cp -r ./Environments/RedObsidian/* ~/.config/

# This is added to let the terminal use the tools installed with pip
echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.zshrc

## Setup finctions
echo "" >> ~/.zhsrc
cat ./functions/fast_ping.sh >> ~/.zshrc
cat ./functions/nmap_quick_scan.sh >> ~/.zshrc
cat ./functions/extract_nmap_info.sh >> ~/.zshrc
cat ./functions/nmap_port_scanner.sh >> ~/.zshrc
cat ./functions/make_startup_directories.sh >> ~/.zshrc
