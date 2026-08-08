#!/usr/bin/env bash

package_update() {
    log_info "Updating package index..."

    apt-get update

    log_success "Package index updated."
}

package_install() {

    log_info "Installing: $*"

    apt-get install -y "$@"

    log_success "Installation completed."
}