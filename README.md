# Agricultural Labour Access Platform

A mobile platform that helps farmers discover nearby agricultural labour and
service providers based on crop, agricultural work/skill, availability and
geographic proximity.

## Core Concept

Crop + Required Work/Skill + Availability + Location

## Users

### Farmer

Uses the application to find nearby agricultural workers.

### Service Provider

Can be:

- Individual Labour
- Labour Group
- Contractor

### Admin

A protected system-management role and not a normal public role-selection
option.

## V1 Goal

Find the right agricultural worker quickly and enable direct contact.

V1 does not include:

- Online payments
- Wallet
- Chat
- In-app negotiation
- Complex booking
- Payroll
- Attendance
- AI recommendations

## Technology

### Mobile

Flutter

### Backend

Spring Boot REST API

### Database

MySQL

## Current Flutter Flow

### Farmer

Role Selection
→ Farmer
→ Mobile Number
→ OTP Verification UI
→ Farmer Profile
→ Farmer Home
→ Find Labour
→ Crop Selection
→ Required Work/Skill Selection
→ GPS Location

### Service Provider

Role Selection
→ Service Provider
→ Mobile Number
→ Provider Type
→ Provider Profile
→ Crop Selection
→ Skill Selection

## Current Project Status

The project is currently in the Flutter frontend implementation phase.

The initial Farmer flow through GPS location has been implemented and checked
on the Android emulator.

The initial Service Provider flow through skill selection has also been
implemented and checked on the Android emulator.

Real authentication, backend APIs, database integration, matching, provider
availability, expected pay, provider location and the remaining production
features are still pending.

The current crop and skill catalogue is temporary frontend data and will
eventually be replaced by a backend/database-driven catalogue.

## Documentation

- `PROGRESS.md` — implementation progress
- `DECISIONS.md` — project decisions
- `TODO.md` — remaining work