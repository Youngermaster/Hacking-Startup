# Make sure to run as root
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install seclists gobuster ghidra -y

cd ~
echo "" >> ~/.bashrc
cat ./functions/extract_nmap_info.sh
cat ./functions/fast_ping.sh
cat ./functions/make_startup_directories.sh
cat ./functions/nmap_quick_scan.sh
