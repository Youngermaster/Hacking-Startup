# -p- searchs for all the ports (65535).
# --open searchs for all the open ports.
# -sS searchs over TCP, so we go a little bit faster.
# --min-rate 5000, we send packets no slower than 5000 per second, so we go a little bit faster.
# -vvv Gives us more info.
# -n We avoid to scan with DSN resolution.
# -Pn Doens't pings the target.
# -oG generates an output of the resulted scan.

nmap -p- --open -sS --min-rate 5000 -n -Pn $(ip) -oG allPorts
