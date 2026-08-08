# Node.js Installer

## Overview

Node.js Installer adalah modul Infraserver yang digunakan untuk menginstal Node.js LTS menggunakan repository resmi NodeSource.

Installer ini bersifat modular dan dapat dijalankan secara mandiri maupun melalui Bootstrap Framework.

---

## Features

- Install dependency packages
- Configure NodeSource repository
- Install Node.js LTS
- Verify Node.js installation
- Idempotent execution
- Logging support

---

## Requirements

- Debian 13 (Trixie)
- Root user
- Internet connection

---

## Installation Flow

```text
Validation
    ↓
Environment Preparation
    ↓
NodeSource Repository
    ↓
Node.js Installation
    ↓
Verification
```

---

## Usage

Masuk ke folder installer:

```bash
cd bootstrap/installers
```

Jalankan:

```bash
./node.sh
```

---

## Expected Output

```text
Running as root.
Debian detected.
Internet connection available.

Preparing Node.js installation environment...

Adding NodeSource repository...

Installing Node.js...

Verifying Node.js installation...

Node.js installer completed.
```

---

## Verification

Pastikan:

```bash
node --version
npm --version
```

Contoh:

```text
v22.23.2
10.9.8
```

---

## Troubleshooting

### Permission denied

Jalankan:

```bash
chmod +x bootstrap/installers/node.sh
```

---

### Repository already exists

Installer bersifat idempotent.

Jalankan kembali installer.

---

### No internet connection

Periksa koneksi:

```bash
ping deb.debian.org
```

---

## Project Structure

```text
bootstrap/
│
├── installers/
│   └── node.sh
│
└── lib/
    └── node.sh
```

---

## Current Status

- Bootstrap Framework ✔
- Environment ✔
- Repository ✔
- Installation ✔
- Verification ✔