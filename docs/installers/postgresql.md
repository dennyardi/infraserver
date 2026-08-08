# PostgreSQL Installer

## Overview

PostgreSQL Installer merupakan modul Infraserver yang bertugas menginstal dan memverifikasi PostgreSQL menggunakan repository resmi Debian.

Installer ini mengikuti prinsip Infraserver:

- CLI First
- Modular
- Idempotent
- Production Ready
- Infrastructure as Code

PostgreSQL diinstal menggunakan repository resmi Debian tanpa menambahkan repository pihak ketiga.

---

# Features

- Install PostgreSQL dari Debian Repository
- Automatic Package Update
- Automatic Service Enable
- Automatic Service Start
- Installation Verification
- Idempotent Installation

---

# Requirements

- Debian 13 (Trixie)
- Root User
- Internet Connection

---

# Installed Packages

Installer akan menginstal package berikut:

```text
postgresql
```

Semua package diinstal menggunakan library package bawaan Infraserver.

---

# Installation Flow

Installer berjalan dengan urutan berikut:

```text
Validation
        │
        ▼
Environment Preparation
        │
        ▼
Package Installation
        │
        ▼
Service Initialization
        │
        ▼
Installation Verification
        │
        ▼
Completed
```

---

# Installation Steps

## 1. Environment Preparation

Installer akan:

- Memperbarui package index
- Memastikan environment siap

---

## 2. PostgreSQL Installation

Installer akan menginstal PostgreSQL menggunakan:

```bash
apt install postgresql
```

melalui library package Infraserver.

---

## 3. Service Management

Installer akan menjalankan:

```bash
systemctl enable --now postgresql
```

Sehingga service langsung aktif dan otomatis berjalan saat boot.

---

## 4. Installation Verification

Installer akan memverifikasi:

- PostgreSQL berhasil diinstal
- Perintah `psql` tersedia
- Service PostgreSQL dalam status `active`

Contoh output:

```text
[SUCCESS] PostgreSQL version : 17.x
[SUCCESS] PostgreSQL service : active
[SUCCESS] psql available.
```

---

# Idempotency

Installer dirancang agar aman dijalankan berulang kali.

Jika PostgreSQL telah terinstal, installer tidak akan menghasilkan error dan hanya memastikan:

- Package tetap terinstal
- Service tetap aktif
- Verifikasi tetap berhasil

---

# Troubleshooting

## Package installation failed

Periksa koneksi internet.

```bash
apt update
```

---

## Service not running

Periksa status service.

```bash
systemctl status postgresql
```

atau

```bash
systemctl restart postgresql
```

---

## psql command not found

Pastikan package PostgreSQL telah berhasil diinstal.

```bash
apt install postgresql
```

---

# Related Files

```text
bootstrap/installers/postgresql.sh

bootstrap/lib/postgresql.sh

bootstrap/lib/package.sh

bootstrap/lib/validation.sh

bootstrap/lib/system.sh

bootstrap/common.sh
```

---

# Version

Current Version

```text
v0.4.0
```

---

# Design Philosophy

PostgreSQL Installer mengikuti prinsip:

- Menggunakan repository resmi Debian
- Tidak mengubah konfigurasi PostgreSQL bawaan
- Tidak membuat database secara otomatis
- Tidak membuat user aplikasi secara otomatis
- Tidak membuka akses remote secara otomatis
- Fokus pada instalasi runtime yang stabil dan siap digunakan

Konfigurasi lanjutan seperti pembuatan database, user aplikasi, dan remote access akan disediakan melalui modul terpisah pada milestone berikutnya.

---

# Future Improvements

Rencana pengembangan selanjutnya:

- PostgreSQL Cluster Information
- Database Creation Helper
- User Creation Helper
- Extension Management
- Backup Helper
- Restore Helper
- pg_hba.conf Management
- postgresql.conf Management