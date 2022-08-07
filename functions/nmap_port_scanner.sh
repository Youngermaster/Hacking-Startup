# -sCV gets the version and the services that runs on the given ports.
# -p$(ports) The given ports.
# -oN exports all the info in a "targeted" mode.
# Note: If the target blocks the pings, use the -Pn flag

function portScanner() {
    nmap -sCV -p$2 $1 -oN targeted -Pn
}
