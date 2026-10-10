#!/bin/bash
print_header() {
	echo ""
	echo "=== $1 ==="
	echo ""
}
show_system() {
	local host
	host=$(hostname)
	print_header "System Information"
	echo "Hostname: $host"
	echo "Kernal: $(uname -r)"
	echo "Uptime: $(uptime -p)"
}
show_disk() {
	print_header "Disk Usage"
	df -h /
}
show_system
show_disk
