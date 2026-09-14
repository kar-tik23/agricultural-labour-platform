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

Role Selection
→ Farmer
→ Mobile Number
→ OTP Verification UI

## Project Status

Early implementation phase.

Real authentication, backend, database, matching and location systems are
not implemented yet.

## Documentation

- `PROGRESS.md` — implementation progress
- `DECISIONS.md` — project decisions
- `TODO.md` — remaining work