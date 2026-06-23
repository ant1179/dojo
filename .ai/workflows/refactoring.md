---
name: refactoring
description: Standard workflow for improving code quality without changing observable behavior.
version: 1.0
owner: Technical Lead
---

# Purpose

This workflow defines how existing code is improved while preserving its functional behavior.

The objective is to reduce technical debt, improve maintainability and simplify future development without changing business functionality.

---

# Trigger

Start this workflow when:

- code complexity becomes excessive;
- duplicated logic is identified;
- maintainability decreases;
- architecture recommendations require restructuring;
- technical debt has been prioritized.

---

# Participants

- Technical Lead
- Architect Review
- Backend Feature
- Frontend Screen
- QA Review

The Product Owner is only involved if the refactoring impacts scope or delivery planning.

---

# Workflow

---

## Phase 1 — Assessment

### Responsible

Architect Review

### Objective

Understand why refactoring is needed.

### Activities

- Review current implementation
- Identify technical debt
- Identify architectural issues
- Evaluate risks

### Deliverables

Refactoring Assessment Report

### Exit Criteria

- Refactoring justified
- Risks identified
- Scope defined

---

## Phase 2 — Planning

### Responsible

Technical Lead

### Objective

Define a safe execution plan.

### Activities

- Break work into small iterations
- Identify dependencies
- Define validation strategy
- Plan rollback if needed

### Deliverables

Refactoring Plan

### Exit Criteria

- Scope frozen
- Validation strategy approved

---

## Phase 3 — Refactoring

### Responsible

Backend Feature and/or Frontend Screen

### Objective

Improve the implementation while preserving behavior.

### Activities

- Simplify code
- Remove duplication
- Improve naming
- Improve modularity
- Improve readability

Never change business behavior.

### Deliverables

Refactored implementation

Updated tests (if required)

---

## Phase 4 — Validation

### Responsible

QA Review

### Objective

Ensure no functional regression exists.

### Activities

- Execute regression tests
- Compare behavior before and after
- Validate existing acceptance criteria

### Deliverables

Regression Report

### Exit Criteria

- No behavioral changes
- No regressions
- Tests pass

---

## Phase 5 — Final Review

### Responsible

Technical Lead

### Objective

Approve completion.

### Activities

- Review implementation
- Review QA report
- Review architectural consistency
- Prepare Pull Request

### Deliverables

Pull Request

Engineering Summary

---

# Escalation Rules

Immediately stop if:

- Functional behavior changes
- Architecture must be redesigned
- Business requirements must change
- New features become necessary
- Existing tests become invalid without explanation

---

# Artifacts Produced

- Refactoring Assessment Report
- Refactoring Plan
- Updated Implementation
- Regression Report
- Pull Request

---

# Success Criteria

The workflow succeeds when:

- External behavior is unchanged
- Code readability improves
- Complexity is reduced
- Technical debt is reduced
- Tests continue to pass
- Documentation remains consistent

---

# Failure Criteria

The workflow fails if:

- Business behavior changes
- Hidden features are introduced
- Existing functionality breaks
- Technical debt increases
- New complexity replaces old complexity

---

# Continuous Improvement

After every refactoring identify:

- Additional refactoring opportunities
- Recurring design problems
- Improvements to coding standards
- Opportunities for automation

Do not expand the scope without approval.
