## DEC-002 — V1 Authentication UI

**Status:** IMPLEMENTED

### Decision

The initial Flutter Farmer flow uses:

Mobile Number
→ OTP Verification UI

### Reason

This follows the approved Farmer application flow.

### Important

This decision covers the UI flow only.

The actual OTP provider and session/token strategy remain TBD.

---

## DEC-003 — No Authentication Provider Selected Yet

**Status:** TBD

### Decision

No OTP provider or authentication/session technology will be selected until
the backend authentication architecture is defined.

### Reason

The project context explicitly leaves these decisions open.

### Current Status

- OTP provider: TBD
- Token/session strategy: TBD