#!/usr/bin/env bash

get_hostname() {
    hostname
}

get_os_name() {
    source /etc/os-release
    echo "$PRETTY_NAME"
}

get_os_version() {
    source /etc/os-release
    echo "$VERSION_ID"
}

get_os_codename() {
    source /etc/os-release
    echo "$VERSION_CODENAME"
}

get_kernel_version() {
    uname -r
}

get_architecture() {
    uname -m
}

is_debian() {
    source /etc/os-release

    [[ "$ID" == "debian" ]]
}