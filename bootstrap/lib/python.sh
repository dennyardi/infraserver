#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Python Library
# Version : v0.3.0-dev
# ============================================================
#

prepare_python_environment() {

    log_info "Preparing Python installation environment..."

    package_update

    package_install \
        software-properties-common \
        curl \
        ca-certificates \
        gnupg

    log_success "Environment ready."

}

install_python() {

    log_info "Installing Python..."

    package_install \
        python3 \
        python3-pip \
        python3-venv

    log_success "Python installed."

}
