# This function is taken from S4vitar's blog.
# https://s4vitar.github.io/bspwm-configuration-files/

ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
echo $ports | tr -d '\n' | xclip -sel clip
echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
cat extractPorts.tmp; rm extractPorts.tmp
