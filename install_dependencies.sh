# Make sure to run as root
sudo apt-get update -y
sudo apt-get install seclists gobuster ghidra fping nmap crackmapexec htop grep sed python3-impacket john responder -y

# Python stuff
sudo apt-get install python3 python3-venv python3-pip -y

# General packages for Python3
pip3 install matplotlib numpy matplotlib jupyterlab kerbrute usersgenerator ldap3 dnspython future ldapdomaindump

sudo apt-get upgrade -y

# This is added to let the terminal use the tools installed with pip
echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.zshrc
