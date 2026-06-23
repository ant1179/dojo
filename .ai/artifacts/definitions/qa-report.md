# QA Report

> The QA Report is the validation artifact produced by the QA Review skill.
>
> It documents the verification of a completed implementation against the approved specification and engineering standards.
>
> A feature cannot proceed to Technical Review without this report.

---

# Purpose

The QA Report answers one question:

> **Is this implementation ready for engineering approval?**

Its purpose is to verify that the implementation satisfies the approved specification while protecting product quality.

---

# Produced By

QA Review

---

# Consumed By

- Technical Lead
- Product Owner
- Backend Feature
- Frontend Screen

---

# Input Documents

Before producing this artifact review:

- Product Specification
- Specification Review
- Architecture Review
- Implementation Plan
- Source Code
- Test Results
- CI Results

Never validate against assumptions.

---

# Required Sections

Every QA Report must contain the following sections.

---

## Executive Summary

Briefly summarize:

- feature reviewed;
- overall quality;
- release readiness.

---

## Scope of Review

Describe:

- reviewed components;
- reviewed APIs;
- reviewed screens;
- reviewed services;
- reviewed modules.

---

## Acceptance Criteria Verification

For every acceptance criterion specify:

| Acceptance Criterion | Status | Notes |
|----------------------|--------|------|
| ... | PASS / FAIL | ... |

Every criterion must be verified.

---

## Functional Testing

Verify:

- expected behaviour;
- error handling;
- edge cases;
- invalid inputs;
- business rules.

Document all findings.

---

## Regression Testing

Verify that:

- existing functionality still works;
- APIs remain compatible;
- integrations remain operational.

List all regression tests executed.

---

## Test Coverage Assessment

Review:

- unit tests;
- integration tests;
- end-to-end tests;
- manual testing.

Identify coverage gaps.

---

## Non-Functional Validation

Review:

- performance;
- security;
- accessibility;
- logging;
- monitoring;
- error reporting.

Document observations.

---

## Defects

Categorize every identified defect.

### Critical

Must be fixed before release.

---

### High

Strongly recommended before release.

---

### Medium

Should be scheduled.

---

### Low

Can be deferred.

---

## Risks

Identify:

- release risks;
- operational risks;
- regression risks;
- usability risks.

Explain the potential impact.

---

## Recommendations

Provide concrete actions required before approval.

Recommendations should be actionable.

---

## Final Recommendation

Choose exactly one:

- Approved
- Approved with Observations
- Rejected

Explain the decision.

---

# Quality Checklist

Before approval verify:

- Every acceptance criterion reviewed.
- Regression testing completed.
- Test coverage evaluated.
- Defects categorized.
- Risks documented.
- Recommendation justified.

---

# Quality Standards

A good QA Report is:

- objective;
- evidence-based;
- reproducible;
- actionable;
- complete.

The report should allow another engineer to understand exactly why the feature was or was not approved.

---

# Relationships

Produced after:

- Implementation

Consumed before:

- Technical Review
- Human Review

---

# Success Criteria

The QA Report succeeds when the Technical Lead can make a release decision based solely on the information contained in the report.
