#!/usr/bin/env bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/common.sh"

print_banner

echo

echo "Hostname      : $(get_hostname)"
echo "OS            : $(get_os_name)"
echo "Version       : $(get_os_version)"
echo "Codename      : $(get_os_codename)"
echo "Kernel        : $(get_kernel_version)"
echo "Architecture  : $(get_architecture)"

echo

check_root
check_debian
check_internet

log_success "Bootstrap framework ready."