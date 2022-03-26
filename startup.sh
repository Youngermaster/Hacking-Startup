## Setup folders
mkdir -p ~/HackTheBox/config
mkdir -p ~/HackTheBox/machines
mkdir -p ~/HackTheBox/challenges
mkdir -p ~/GitHub/Youngermaster
mkdir -p ~/GitHub/AnotherOnes

## Setup finctions
echo "" >> ~/.bashrc
cat ./functions/extract_nmap_info.sh >> ~/.zshrc
cat ./functions/fast_ping.sh >> ~/.zshrc
cat ./functions/make_startup_directories.sh >> ~/.zshrc
cat ./functions/nmap_quick_scan.sh >> ~/.zshrc
