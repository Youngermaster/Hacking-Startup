# Make sure to run as root
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install seclists gobuster ghidra -y

## Setup folders
mkdir -p ~/HackTheBox/config
mkdir -p ~/HackTheBox/machines
mkdir -p ~/HackTheBox/challenges
mkdir -p ~/GitHub/Youngermaster
mkdir -p ~/GitHub/AnotherOnes

## Setup finctions
cd ~
echo "" >> ~/.bashrc
cat ./functions/extract_nmap_info.sh >> ~/.bashrc
cat ./functions/fast_ping.sh >> ~/.bashrc
cat ./functions/make_startup_directories.sh >> ~/.bashrc
cat ./functions/nmap_quick_scan.sh >> ~/.bashrc
