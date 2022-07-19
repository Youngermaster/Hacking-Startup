## Setup folders
mkdir -p ~/HackTheBox/config
mkdir -p ~/HackTheBox/machines
mkdir -p ~/HackTheBox/challenges
mkdir -p ~/GitHub/Youngermaster
mkdir -p ~/GitHub/AnotherOnes
mkdir -p ~/Pictures/Wallpapers

bash ./install_dependencies.sh
cp ./assets/.zshrc ~/
sudo cp ./assets/fonts/* /usr/local/share/fonts/
fc-cache -v

# This is added to let the terminal use the tools installed with pip
echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.zshrc

## Setup finctions
echo "" >> ~/.zhsrc
cat ./functions/extract_nmap_info.sh >> ~/.zshrc
cat ./functions/fast_ping.sh >> ~/.zshrc
cat ./functions/make_startup_directories.sh >> ~/.zshrc
cat ./functions/nmap_quick_scan.sh >> ~/.zshrc
