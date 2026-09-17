# Project Decisions

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

---

## DEC-006 — Geolocator for GPS Location

**Status:** IMPLEMENTED

### Decision

The Flutter application will use the Geolocator package for GPS location
detection.

### Reason

The Farmer flow requires the user's geographic location for nearby labour
discovery.

### Current Implementation

GPS location detection has been implemented in the Flutter application and
verified on the Android emulator.

### Notes

Location storage, search radius, distance calculation, update frequency and
backend integration remain TBD.

The Geolocator dependency version was adjusted during Android build
compatibility troubleshooting.