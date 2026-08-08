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
        | gpg --dearmor --yes \
    -o /etc/apt/keyrings/nodesource.gpg

    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" \
        > /etc/apt/sources.list.d/nodesource.list

    package_update

    log_success "NodeSource repository added."
}

install_nodejs() {

    log_info "Installing Node.js..."

    package_install nodejs

    log_success "Node.js installed."

}

verify_nodejs() {

    log_info "Verifying Node.js installation..."

    if ! command_exists node; then
        log_error "Node.js executable not found."
        exit 1
    fi

    if ! command_exists npm; then
        log_error "npm executable not found."
        exit 1
    fi

    local node_version
    local npm_version

    node_version="$(node --version)"
    npm_version="$(npm --version)"

    log_success "Node.js version : ${node_version}"
    log_success "npm version     : ${npm_version}"
}