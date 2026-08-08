#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Python Installer
# Version : v0.3.0-dev
# Purpose : Install Python Runtime
# ============================================================
#

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOTSTRAP_DIR="$(dirname "$SCRIPT_DIR")"

source "${BOOTSTRAP_DIR}/common.sh"

main() {

    print_banner
    print_section "Python Installer"

    check_root
    check_debian
    check_internet

    log_info "Starting Python installation..."

    prepare_python_environment
    install_python
    # verify_python

    log_success "Python installer initialized."

}

main "$@"