#!/usr/bin/env bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/common.sh"

print_banner

show_system_info

check_root
check_debian
check_internet

print_blank_line

log_success "Bootstrap framework ready."