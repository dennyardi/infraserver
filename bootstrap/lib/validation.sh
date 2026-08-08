#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Validation Library
# Version : v0.1.0
# Purpose : Validate system requirements
# ============================================================
#

check_root() {
    if [[ $EUID -ne 0 ]]; then
        log_error "This script must be run as root."
        exit 1
    fi

    log_success "Running as root."
}

check_debian() {
    if ! is_debian; then
        log_error "Unsupported operating system."
        exit 1
    fi

    log_success "Debian detected."
}

check_internet() {
    if ping -c 1 deb.debian.org >/dev/null 2>&1; then
        log_success "Internet connection available."
    else
        log_error "No internet connection."
        exit 1
    fi
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}