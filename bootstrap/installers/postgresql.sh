#!/usr/bin/env bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOTSTRAP_DIR="$(dirname "$SCRIPT_DIR")"

source "${BOOTSTRAP_DIR}/common.sh"

main() {

    print_banner
    print_section "PostgreSQL Installer"

    check_root
    check_debian
    check_internet

    log_info "Starting PostgreSQL installation..."

    prepare_postgresql_environment

    log_success "PostgreSQL installer initialized."

}

main "$@"