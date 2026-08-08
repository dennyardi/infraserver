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

start_postgresql_service() {

    log_info "Starting PostgreSQL service..."

    service_enable_now postgresql

    log_success "PostgreSQL service started."

}

verify_postgresql() {

    log_info "Verifying PostgreSQL installation..."

    if ! command_exists psql; then
        log_error "psql command not found."
        exit 1
    fi

    local version
    version=$(psql --version | awk '{print $3}')

    log_success "PostgreSQL version : ${version}"

    if service_is_active postgresql; then
        log_success "PostgreSQL service : active"
    else
        log_error "PostgreSQL service is not running."
        exit 1
    fi

    log_success "psql available."

}

