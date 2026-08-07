#!/usr/bin/env bash

print_line() {
    printf '%*s\n' "${COLUMNS:-60}" '' | tr ' ' '='
}

print_banner() {
    print_line
    echo "             INFRASERVER"
    echo "       Bootstrap Framework"
    print_line
}

print_section() {
    echo
    print_line
    echo "$1"
    print_line
}