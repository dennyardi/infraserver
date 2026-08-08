#!/usr/bin/env bash

#
# ============================================================
# Infraserver - PostgreSQL Library
# Version : v0.4.0-dev
# ============================================================
#

prepare_postgresql_environment() {

    log_info "Preparing PostgreSQL installation environment..."

    package_update

    log_success "Environment ready."

}