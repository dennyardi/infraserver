#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Node.js Library
# Version : v0.2.0-dev
# ============================================================
#

prepare_node_environment() {

    log_info "Preparing Node.js installation environment..."

    package_install \
        curl \
        ca-certificates \
        gnupg

    log_success "Environment ready."
}

install_nodesource_repository() {

    log_info "Adding NodeSource repository..."

    mkdir -p /etc/apt/keyrings

    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
        | gpg --dearmor \
        -o /etc/apt/keyrings/nodesource.gpg

    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" \
        > /etc/apt/sources.list.d/nodesource.list

    package_update

    log_success "NodeSource repository added."
}
