## DEC-004 — Android Emulator for UI Verification

**Status:** IMPLEMENTED

### Decision

The Flutter application will be checked on an Android emulator during
development in addition to web-based development checks.

### Verification Environment

- Android emulator: Pixel 8a
- Android version: Android 17
- API level: 37

### Reason

The project is intended as a mobile application, so Android runtime behaviour
must be checked during development.

### Notes

A physical Android device has not yet been verified.

---

## DEC-005 — Temporary Frontend Crop/Skill Catalogue

**Status:** IMPLEMENTED

### Decision

The initial Flutter implementation uses a temporary local crop and
crop-specific skill catalogue.

### Reason

The backend and database have not yet been implemented.

### Future

The catalogue will be moved to a data-driven backend/database implementation.

### Important

The local catalogue must not be treated as the final database schema.