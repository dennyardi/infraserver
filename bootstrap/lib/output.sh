#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Output Library
# Version : v0.1.0
# Purpose : Display banner, sections and system information
# ============================================================
#

print_line() {
    printf '=%.0s' {1..60}
    echo
}

print_banner() {
    print_line
    echo "                 INFRASERVER"
    echo "          Bootstrap Framework v0.1.0"
    print_line
    echo
}

print_section() {
    echo
    print_line
    echo "$1"
    print_line
}

show_system_info() {
    echo "Hostname      : $(get_hostname)"
    echo "OS            : $(get_os_name)"
    echo "Version       : $(get_os_version)"
    echo "Codename      : $(get_os_codename)"
    echo "Kernel        : $(get_kernel_version)"
    echo "Architecture  : $(get_architecture)"
    echo
}