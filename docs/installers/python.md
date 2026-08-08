# Python Installer

## Overview

Python Installer digunakan untuk menginstal runtime Python yang siap digunakan pada server Debian.

Installer ini menggunakan **repository resmi Debian** sehingga lebih stabil, aman, dan mudah dipelihara.

---

# Features

- Install Python 3
- Install pip
- Install venv
- Idempotent
- Production Ready
- Debian Repository
- Logging Support

---

# Installed Packages

Installer akan menginstal package berikut:

- python3
- python3-pip
- python3-venv

---

# Requirements

- Debian 13 (Trixie)
- Root User
- Internet Connection

---

# Usage

Masuk ke folder installer:

```bash
cd bootstrap/installers
```

Jalankan installer:

```bash
./python.sh
```

---

# Installation Flow

Installer menjalankan tahapan berikut:

```text
Validation
        ↓
Environment Preparation
        ↓
Python Installation
        ↓
Verification
```

---

# Verification

Installer akan memverifikasi hasil instalasi dengan menampilkan:

- Python Version
- pip Version

Contoh output:

```text
[SUCCESS] Python version : 3.13.x
[SUCCESS] pip version    : 25.x.x
```

---

# Runtime Ready

Setelah instalasi selesai, server siap digunakan untuk menjalankan aplikasi Python.

Contoh membuat Virtual Environment:

```bash
python3 -m venv .venv
```

Aktifkan environment:

```bash
source .venv/bin/activate
```

Install package:

```bash
pip install fastapi uvicorn
```

---

# Idempotency

Installer dapat dijalankan berkali-kali tanpa menyebabkan error.

Contoh:

```bash
./python.sh
./python.sh
./python.sh
```

Jika package sudah terpasang, installer hanya akan menampilkan bahwa package sudah menggunakan versi terbaru.

---

# Design Decision

Python Installer menggunakan repository bawaan Debian.

Alasan:

- Stabil
- Aman
- Mendapat update keamanan dari Debian
- Tidak membutuhkan repository eksternal
- Cocok untuk server production

Installer **tidak menggunakan**:

- Deadsnakes PPA
- pyenv
- Source Compilation

---

# Troubleshooting

## Package Not Found

Pastikan package index telah diperbarui.

```bash
apt update
```

---

## Internet Connection

Pastikan server memiliki koneksi internet.

```bash
ping deb.debian.org
```

---

## Permission Denied

Pastikan installer memiliki permission executable.

```bash
chmod +x bootstrap/installers/python.sh
```

> Catatan: Pada repository Infraserver, executable permission telah disimpan di Git sehingga langkah ini biasanya tidak diperlukan.

---

# Tested On

- Debian GNU/Linux 13 (Trixie)

---

# Related Files

```text
bootstrap/installers/python.sh
bootstrap/lib/python.sh
bootstrap/common.sh
```

---

# Version

Current Version:

```
v0.3.0
```