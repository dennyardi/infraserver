#!/usr/bin/env bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/lib/logger.sh"
source "${SCRIPT_DIR}/lib/output.sh"
source "${SCRIPT_DIR}/lib/system.sh"
source "${SCRIPT_DIR}/lib/validation.sh"
source "${SCRIPT_DIR}/lib/package.sh"
source "${SCRIPT_DIR}/lib/node.sh"
source "${SCRIPT_DIR}/lib/python.sh"
source "${SCRIPT_DIR}/lib/postgresql.sh"