# -sCV gets the version and the services that runs on the given ports.
# -p$(ports) The given ports.
# -oN exports all the info in a "targeted" mode.

nmap -sCV -p$(ports) $ip -oN targeted

# Note: If the target blocks the pings, use the -Pn flag

nmap -sCV -p$(ports) $ip -oN targeted -Pn

