# Architecture Review

> The Architecture Review is the engineering decision artifact produced by the Architect Review skill.
>
> It validates that the proposed implementation aligns with the project's architectural principles and long-term technical strategy.
>
> No implementation should begin before this review has been completed.

---

# Purpose

The Architecture Review answers one question:

> **Is this the right technical solution?**

Its purpose is to evaluate architectural decisions before implementation begins.

It protects:

- maintainability
- scalability
- reliability
- security
- consistency

---

# Produced By

Architect Review

---

# Consumed By

- Technical Lead
- Backend Feature
- Frontend Screen
- QA Review

---

# Input Documents

Before producing this artifact review:

- Product Specification
- Specification Review
- Existing Architecture
- ADRs
- Coding Standards
- Current Source Code

Never propose architecture without understanding the existing system.

---

# Required Sections

Every Architecture Review must contain the following sections.

---

## Executive Summary

Briefly explain:

- the proposed solution;
- why it was selected;
- expected technical benefits.

---

## Current Architecture

Describe the current state.

Identify:

- existing components;
- existing dependencies;
- existing constraints.

---

## Proposed Architecture

Describe:

- new components;
- modified components;
- removed components;
- interactions.

Include diagrams if appropriate.

---

## Design Decisions

Document every important architectural decision.

For each decision explain:

- rationale;
- alternatives considered;
- expected consequences.

Reference ADRs whenever applicable.

---

## Impact Analysis

Evaluate the impact on:

- backend
- frontend
- database
- APIs
- infrastructure
- deployment
- monitoring
- testing
- documentation

---

## Risk Assessment

Identify:

- technical risks;
- operational risks;
- scalability risks;
- security risks;
- migration risks.

For every risk describe mitigation strategies.

---

## Performance Considerations

Evaluate:

- expected load;
- latency;
- throughput;
- resource consumption;
- caching opportunities.

Avoid premature optimization.

---

## Security Considerations

Review:

- authentication;
- authorization;
- sensitive data;
- secrets;
- encryption;
- attack surface.

Document any new security requirements.

---

## Migration Strategy

If existing components change:

Describe:

- migration steps;
- rollback strategy;
- compatibility strategy.

---

## Alternatives Considered

List realistic alternatives.

For each alternative explain:

- advantages;
- disadvantages;
- why it was rejected.

---

## Recommendations

Provide concrete implementation recommendations.

These recommendations should reduce engineering risk.

---

## Final Decision

Choose exactly one:

- Approved
- Approved with Recommendations
- Rejected

Explain the decision.

---

# Quality Checklist

Before approval verify:

- Architecture is consistent.
- Risks documented.
- Security reviewed.
- Performance considered.
- Migration strategy defined.
- Rollback possible.
- Documentation identified.

---

# Quality Standards

A good Architecture Review is:

- objective;
- evidence-based;
- pragmatic;
- maintainable;
- scalable.

Architecture should solve today's problem while supporting future evolution.

---

# Relationships

Produced after:

- Specification Review

Consumed before:

- Implementation Plan
- Backend Feature
- Frontend Screen

---

# Success Criteria

The Architecture Review succeeds when engineering teams can implement the feature confidently without making architectural decisions themselves.
