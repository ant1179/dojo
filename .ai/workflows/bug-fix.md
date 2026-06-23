---
name: bug-fix
description: Standard workflow for investigating, fixing and validating defects.
version: 1.0
owner: Technical Lead
---

# Purpose

This workflow defines how production or development defects are investigated, fixed and validated.

The objective is to restore the expected behavior while minimizing risk and preventing regressions.

---

# Trigger

Start this workflow when:

- a bug is reported;
- a regression is detected;
- an automated test fails;
- QA identifies an unexpected behavior.

---

# Participants

- Product Owner (only if business clarification is needed)
- Technical Lead
- QA Review
- Backend Feature (if backend)
- Frontend Screen (if frontend)
- Architect Review (only if required)

---

# Workflow

---

## Phase 1 — Triage

### Responsible

Technical Lead

### Objective

Understand and classify the defect.

### Activities

- Review the issue
- Estimate severity
- Identify impacted area
- Assign ownership

### Deliverables

Bug Analysis

### Exit Criteria

- Bug reproduced or clearly understood
- Severity assigned
- Owner identified

---

## Phase 2 — Investigation

### Responsible

QA Review

### Objective

Reproduce and isolate the issue.

### Activities

- Reproduce the bug
- Collect logs
- Identify reproduction steps
- Determine expected behaviour

### Deliverables

Bug Investigation Report

### Exit Criteria

- Root cause suspected
- Reproduction steps documented

---

## Phase 3 — Fix

### Responsible

Backend Feature and/or Frontend Screen

### Objective

Implement the correction.

### Activities

- Fix the defect
- Add regression tests
- Update documentation if required

### Deliverables

Implementation

Regression Tests

### Exit Criteria

- Bug fixed
- Regression test added
- CI passes

---

## Phase 4 — Validation

### Responsible

QA Review

### Objective

Verify that the defect is fixed.

### Activities

- Execute regression tests
- Verify acceptance
- Check for side effects

### Deliverables

QA Validation Report

### Exit Criteria

- Bug no longer reproducible
- No regressions detected

---

## Phase 5 — Final Review

### Responsible

Technical Lead

### Objective

Approve delivery.

### Activities

- Review implementation
- Review QA report
- Prepare Pull Request

### Deliverables

Pull Request

Engineering Summary

### Exit Criteria

Ready for Product Owner review (if required).

---

# Escalation Rules

Escalate immediately if:

- Root cause is unknown
- Bug impacts security
- Data corruption is possible
- Fix requires architectural changes
- Bug cannot be reproduced

---

# Artifacts Produced

- Bug Analysis
- Bug Investigation Report
- Regression Tests
- QA Validation Report
- Pull Request

---

# Success Criteria

- Root cause identified
- Defect fixed
- Regression tests added
- QA validated
- CI green

---

# Failure Criteria

- Bug fixed without understanding the cause
- No regression tests added
- Side effects introduced
- QA unable to validate the fix

---

# Continuous Improvement

After each bug fix identify:

- Why the defect escaped detection
- How it could have been prevented
- Whether engineering standards should evolve
