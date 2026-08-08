# Installer Guideline

Semua installer Infraserver harus mengikuti struktur berikut.

## Standard Flow

Validation
↓
Environment Preparation
↓
Repository Configuration
↓
Package Installation
↓
Verification

---

## Standard Library

validation.sh
package.sh
system.sh
logger.sh

---

## Standard Functions

prepare_xxx_environment()

install_repository()

install_package()

verify_package()

---

## Logging

Gunakan:

log_info

log_success

log_warning

log_error

---

## Documentation

Setiap installer wajib memiliki:

docs/installers/<installer>.md

---

## Testing

Setiap installer wajib lolos:

- Functional Test
- Idempotency Test
- Documentation Review
