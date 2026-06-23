---
name: new-feature
description: Standard workflow for delivering a new feature from business idea to production-ready Pull Request.
version: 1.0
owner: Technical Lead
---

# Purpose

This workflow defines the complete engineering process for implementing a new feature.

It ensures that every feature:

- starts from a validated business need;
- respects the project architecture;
- is implemented according to engineering standards;
- is fully tested;
- is reviewed before human validation.

No phase may be skipped unless explicitly approved by the Product Owner.

---

# Trigger

Start this workflow when:

- a new feature is requested;
- an existing feature requires significant enhancement;
- a business capability is added.

---

# Participants

- Product Owner
- Technical Lead
- Product Spec Review
- Architect Review
- Backend Feature
- Frontend Screen
- QA Review

---

# Workflow

---

## Phase 1 — Product Specification

### Responsible

Product Owner

### Objective

Describe the business need.

### Inputs

Business idea

Customer feedback

Roadmap

### Activities

Write or update the feature specification.

Define business value.

Define acceptance criteria.

Define scope.

### Deliverables

Approved Product Specification

### Exit Criteria

- Business objective understood
- Acceptance Criteria complete
- Scope defined

### Next Phase

Product Spec Review

---

## Phase 2 — Product Specification Review

### Responsible

Product Spec Review

### Objective

Ensure the specification is complete.

### Activities

Review the specification.

Identify ambiguities.

Challenge assumptions.

Suggest missing acceptance criteria.

### Deliverables

Validated Specification Review

### Exit Criteria

- No ambiguity
- Acceptance Criteria validated
- Business rules complete

### Next Phase

Architect Review

---

## Phase 3 — Architecture Review

### Responsible

Architect Review

### Objective

Validate the technical approach.

### Activities

Review architecture.

Identify risks.

Evaluate alternatives.

Recommend implementation strategy.

### Deliverables

Architecture Review Report

### Exit Criteria

- Architecture validated
- Risks documented
- Recommendations accepted

### Next Phase

Technical Lead Planning

---

## Phase 4 — Technical Planning

### Responsible

Technical Lead

### Objective

Prepare execution.

### Activities

Break work into tasks.

Assign work to specialists.

Identify dependencies.

Plan implementation sequence.

### Deliverables

Implementation Plan

Task List

### Exit Criteria

- Plan approved
- Dependencies resolved

### Next Phase

Implementation

---

## Phase 5 — Implementation

### Responsible

Backend Feature

Frontend Screen

### Objective

Implement the feature.

### Activities

Write production code.

Write tests.

Update documentation.

Respect architecture.

### Deliverables

Implementation

Tests

Documentation Updates

### Exit Criteria

- Feature complete
- Tests passing
- Documentation updated

### Next Phase

QA Review

---

## Phase 6 — Quality Assurance

### Responsible

QA Review

### Objective

Validate quality.

### Activities

Verify acceptance criteria.

Review tests.

Search for regressions.

Review documentation.

### Deliverables

QA Report

### Exit Criteria

- No Critical issues
- No High severity issues
- Quality Gates passed

### Next Phase

Technical Lead Final Review

---

## Phase 7 — Final Engineering Review

### Responsible

Technical Lead

### Objective

Ensure the feature is ready for human validation.

### Activities

Review every deliverable.

Review QA Report.

Review documentation.

Verify workflow completion.

### Deliverables

Pull Request

Engineering Summary

### Exit Criteria

- Workflow complete
- PR ready
- Human review prepared

### Next Phase

Human Validation

---

## Phase 8 — Human Validation

### Responsible

Product Owner

### Objective

Validate business value.

### Activities

Review behaviour.

Review UX.

Confirm business expectations.

Approve or reject.

### Deliverables

Approval

or

Requested Changes

### Exit Criteria

Feature approved.

### Next Phase

Merge

---

## Phase 9 — Merge

### Responsible

Technical Lead

### Activities

Merge Pull Request.

Close issue.

Update roadmap if necessary.

### Deliverables

Completed Feature

Closed Issue

---

# Escalation Rules

Immediately stop the workflow if:

- requirements are incomplete;
- architecture changes unexpectedly;
- security risks are identified;
- Quality Gates fail;
- acceptance criteria change during implementation;
- Product Owner requests scope modification.

Resume only after the blocking issue has been resolved.

---

# Artifacts Produced

- Product Specification
- Specification Review
- Architecture Review Report
- Implementation Plan
- Source Code
- Tests
- QA Report
- Pull Request
- Engineering Summary

---

# Success Criteria

The workflow is successful when:

- every phase has been completed;
- every Quality Gate has passed;
- documentation is up to date;
- the Product Owner has approved the feature;
- the Pull Request has been merged.

---

# Failure Criteria

The workflow has failed if:

- implementation started from an incomplete specification;
- architecture review was skipped;
- QA was bypassed;
- documentation was not updated;
- the Product Owner had to identify engineering defects.

---

# Continuous Improvement

After every completed feature, the Technical Lead should organize a retrospective.

Review:

- delivery time;
- blockers;
- recurring defects;
- documentation gaps;
- opportunities for automation.

Record improvement opportunities for future iterations.
