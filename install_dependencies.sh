# First we update the packages
sudo apt-get update -y

# Development stuff
sudo apt-get install vim git cmake g++ build-essential curl net-tools neofetch htop wget nmap ranger xclip zaproxy tor wpscan -y

# Security Related Tools
sudo apt-get install seclists gobuster ghidra fping nmap crackmapexec htop grep wpscan sed python3-impacket jq john responder lapsdumper maltego maltego-teeth apktool -y

# Python stuff
sudo apt-get install python3 python3-venv python3-pip -y

# General packages for Python3
pip3 install matplotlib numpy jupyterlab kerbrute usersgenerator ldap3 dnspython future ldapdomaindump flask-unsign pwn pwncat-cs

# Graphical stuff
sudo apt-get install kitty dunst linux-headers-generic baobab libuv1-dev flameshot shotwell mupdf libxinerama-dev -y
sudo apt install xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev light -y

# ZSH
sudo apt-get install zsh zsh-syntax-highlighting zsh-autosuggestions -y
sudo usermod --shell /usr/bin/zsh $USER
sudo usermod --shell /usr/bin/zsh root

# General Packages
sudo apt install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev light -y

# In case there is an error
sudo apt update --fix-missing -y

# Tiling window manager stuff
cd ~/GitHub/AnotherOnes/
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm/
make
sudo make install
cd ../sxhkd/
make
sudo make install
sudo apt install bspwm -y

# Tiling Window manager Configuration
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cd ~/GitHub/AnotherOnes/bspwm/
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc 
cp examples/sxhkdrc ~/.config/sxhkd/

mkdir ~/.config/bspwm/scripts/
touch ~/.config/bspwm/scripts/bspwm_resize; chmod +x ~/.config/bspwm/scripts/bspwm_resize

# Polybar installation
sudo apt remove libcurl4 -y
sudo apt install curl -y
sudo apt install libuv1 libuv1-dev -y
sudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y 
 
cd ~/GitHub/AnotherOnes
git clone --recursive https://github.com/polybar/polybar
cd polybar/
mkdir build
cd build/
cmake ..
make -j$(nproc)
sudo make install

# Picom Installation
sudo apt update -y
sudo apt install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev -y
 
git clone https://github.com/ibhagwan/picom.git
cd picom/
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

# Rofi installation
sudo apt install rofi -y

# We install the background manager
sudo apt install feh -y

# Polybar config
cd ~/GitHub/AnotherOnes
git clone https://github.com/VaughnValle/blue-sky.git
mkdir ~/.config/polybar
cd ~/GitHub/AnotherOnes/blue-sky/polybar/
cp * -r ~/.config/polybar
echo '~/.config/polybar/./launch.sh' >> ~/.config/bspwm/bspwmrc 
cd fonts
sudo cp * /usr/share/fonts/truetype/
fc-cache -v

# Picom config
mkdir ~/.config/picom
cd ~/.config/picom
cp ~/GitHub/AnotherOnes/blue-sky/picom.conf .

# Border configuration
echo 'picom --experimental-backends &' >> ~/.config/bspwm/bspwmrc 
echo 'bspc config border_width 0' >> ~/.config/bspwm/bspwmrc

# Rofi theme update
mkdir -p ~/.config/rofi/themes
cp ~/GitHub/AnotherOnes/blue-sky/nord.rasi ~/.config/rofi/themes

sudo apt update -y
sudo apt install slim libpam0g-dev libxrandr-dev libfreetype6-dev libimlib2-dev libxft-dev -y

cd ~/GitHub/AnotherOnes/
git clone https://github.com/joelburget/slimlock.git
cd slimlock/
sudo make
sudo make install
cd ~/GitHub/AnotherOnes/blue-sky/slim
sudo cp slim.conf /etc/
sudo cp slimlock.conf /etc
sudo cp -r default /usr/share/slim/themes

echo "xsetroot -cursor_name left_ptr &" >> ~/.config/bspwm/bspwmrc

usermod --shell /usr/bin/zsh $USER
usermod --shell /usr/bin/zsh root

# To avoid errors gray screens with IDEA IDEs or Android Studio
sudo apt-get install wmname -y
wmname LG3D

# Avoid problems with light permissions
sudo chmod +s /usr/bin/light

sudo apt upgrade -y
