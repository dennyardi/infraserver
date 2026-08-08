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

verify_python() {

    log_info "Verifying Python installation..."

    local python_version
    local pip_version

    python_version="$(python3 --version | awk '{print $2}')"
    pip_version="$(python3 -m pip --version | awk '{print $2}')"

    log_success "Python version : ${python_version}"
    log_success "pip version    : ${pip_version}"

}
