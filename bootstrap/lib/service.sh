#!/usr/bin/env bash

#
# ============================================================
# Infraserver - Service Library
# Version : v0.5.0-dev
# Purpose : Manage systemd services
# ============================================================
#

service_start() {

    systemctl start "$1"

}

service_stop() {

    systemctl stop "$1"

}

service_restart() {

    systemctl restart "$1"

}

service_reload() {

    systemctl reload "$1"

}

service_enable() {

    systemctl enable "$1"

}

service_disable() {

    systemctl disable "$1"

}

service_enable_now() {

    systemctl enable --now "$1"

}

service_is_active() {

    systemctl is-active --quiet "$1"

}