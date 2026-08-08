#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Nginx Library
# Version : v0.5.0-dev
# ============================================================
#

prepare_nginx_environment() {

    log_info "Preparing Nginx installation environment..."

    package_update

    log_success "Environment ready."

}

install_nginx() {

    log_info "Installing Nginx..."

    package_install nginx

    log_success "Nginx installed."

}

start_nginx_service() {

    log_info "Starting Nginx service..."

    service_enable_now nginx

    log_success "Nginx service started."

}

verify_nginx() {

    log_info "Verifying Nginx installation..."

    if ! command_exists nginx; then
        log_error "Nginx command not found."
        exit 1
    fi

    local version
    version=$(nginx -v 2>&1 | cut -d'/' -f2)

    log_success "Nginx version : ${version}"

    if service_is_active nginx; then
        log_success "Nginx service : active"
    else
        log_error "Nginx service is not running."
        exit 1
    fi

    if nginx -t >/dev/null 2>&1; then
        log_success "Nginx configuration : valid"
    else
        log_error "Nginx configuration test failed."
        exit 1
    fi

    log_success "nginx available."

}