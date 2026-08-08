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

install_postgresql() {

    log_info "Installing PostgreSQL..."

    package_install postgresql

    log_success "PostgreSQL installed."

}
