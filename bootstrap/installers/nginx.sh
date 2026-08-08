#!/usr/bin/env bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOTSTRAP_DIR="$(dirname "$SCRIPT_DIR")"

source "${BOOTSTRAP_DIR}/common.sh"

main() {

    print_banner

    check_root
    check_debian
    check_internet

    log_info "Starting Nginx installation..."

    prepare_nginx_environment

    log_success "Nginx installer initialized."

}

main "$@"