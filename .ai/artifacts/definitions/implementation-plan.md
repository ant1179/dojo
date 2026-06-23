# Implementation Plan

> The Implementation Plan is the primary execution artifact produced by the Technical Lead.
>
> It transforms an approved specification and architecture into an executable engineering plan.
>
> Every implementation workflow must produce this artifact before development begins.

---

# Purpose

The Implementation Plan answers one question:

> **How should this feature be implemented?**

It provides enough information for engineering specialists to execute independently while remaining aligned with the architecture and business objectives.

---

# Produced By

Technical Lead

---

# Consumed By

- Backend Feature
- Frontend Screen
- QA Review
- Product Owner (optional)

---

# Input Documents

Before creating an Implementation Plan, the Technical Lead must review:

- Product Specification
- Specification Review
- Architecture Review
- ADRs
- Existing implementation
- Engineering Standards

---

# Required Sections

Every Implementation Plan must contain the following sections.

---

## Executive Summary

Provide a concise description of:

- the feature;
- the business objective;
- the technical objective.

---

## Scope

Clearly identify:

### Included

Everything that will be implemented.

### Excluded

Everything explicitly outside the scope.

---

## Architecture Impact

Describe:

- impacted modules;
- new components;
- modified components;
- external services;
- database changes;
- API changes.

Reference ADRs when applicable.

---

## Task Breakdown

Split implementation into independent tasks.

Each task should:

- have a clear objective;
- have a single owner;
- be independently testable.

Example:

Task 1

Backend API

Owner

Backend Feature

---

Task 2

Authentication UI

Owner

Frontend Screen

---

Task 3

Regression Tests

Owner

QA Review

---

## Dependencies

List:

Internal dependencies

External dependencies

Blocking dependencies

Optional dependencies

---

## Risks

Identify:

Technical risks

Business risks

Migration risks

Security risks

Performance risks

For every risk provide a mitigation strategy.

---

## Validation Strategy

Explain how implementation will be validated.

Examples:

- Unit Tests
- Integration Tests
- End-to-End Tests
- Manual QA
- Load Testing

---

## Documentation Updates

List every document that must be updated.

Examples:

- Product Specification
- Architecture
- ADR
- README
- API documentation

---

## Rollback Strategy

Explain how the implementation can be safely reverted if required.

---

## Definition of Done

Specify objective completion criteria.

The feature is complete only when:

- implementation complete;
- tests passing;
- documentation updated;
- QA approved;
- Technical Lead approved.

---

# Quality Checklist

Before approval verify:

- Scope complete
- Tasks independent
- Risks documented
- Dependencies identified
- Validation defined
- Rollback possible
- Documentation identified

---

# Quality Standards

A good Implementation Plan is:

- Complete
- Actionable
- Traceable
- Realistic
- Testable

No implementation should require guessing.

---

# Relationships

Produced after:

- Specification Review
- Architecture Review

Consumed before:

- Backend Feature
- Frontend Screen
- QA Review

---

# Success Criteria

The Implementation Plan succeeds when engineering specialists can execute their work without requesting clarification from the Product Owner.
