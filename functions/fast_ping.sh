# This functions give us a fast ping to a source, and also a traceability

function fping() {
    ping -R -c 1 $1
}

