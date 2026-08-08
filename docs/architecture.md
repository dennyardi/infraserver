# Architecture Decisions

## Runtime Philosophy

Installer harus menghasilkan runtime yang siap digunakan.

---

## Python

Repository:

- Debian Official Repository

Reason:

- Stable
- Secure
- Production Ready

---

## Node.js

Repository:

- NodeSource

Reason:

- Latest LTS
- Official Distribution

---

## Idempotency

Semua installer wajib idempotent.

---

## Logging

Semua output menggunakan logger framework.