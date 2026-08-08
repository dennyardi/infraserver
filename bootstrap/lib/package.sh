#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Package Library
# Version : v0.1.0
# Purpose : Package manager wrapper
# ============================================================
#

package_update() {
    log_info "Updating package index..."

    apt-get update

    log_success "Package index updated."
}

package_install() {
    log_info "Installing packages: $*"

    apt-get install -y "$@"

    log_success "Package installation completed."
}