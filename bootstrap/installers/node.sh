#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Node.js Installer
# Version : v0.2.0-dev
# Purpose : Install Node.js LTS on Debian
# ============================================================
#

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOTSTRAP_DIR="$(dirname "$SCRIPT_DIR")"

source "${BOOTSTRAP_DIR}/common.sh"

main() {
    print_banner
    print_section "Node.js Installer"

    check_root
    check_debian
    check_internet

    log_info "Starting Node.js installation..."

    prepare_node_environment

    install_nodesource_repository
    # install_nodejs
    # verify_nodejs 

    log_success "Node.js installer initialized."
}

main "$@"