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

if is_debian; then
    log_success "Debian detected."
else
    log_error "Unsupported operating system."
    exit 1
fi