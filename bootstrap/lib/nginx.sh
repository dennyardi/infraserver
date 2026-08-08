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