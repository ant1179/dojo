# Workflow State Machine

> This document defines the lifecycle of every work item handled by the AI Engineering Team.
>
> Every workflow is an implementation of this state machine.
>
> No work item may bypass or invent states.

---

# Purpose

The state machine guarantees that every task progresses through a controlled engineering lifecycle.

Its objectives are to:

- make progress explicit;
- prevent skipped validations;
- improve traceability;
- support automation;
- simplify orchestration.

---

# State Diagram

```
NEW
 │
 ▼
SPECIFICATION
 │
 ▼
SPECIFICATION_REVIEW
 │
 ▼
ARCHITECTURE_REVIEW
 │
 ▼
PLANNING
 │
 ▼
IMPLEMENTATION
 │
 ▼
QA_REVIEW
 │
 ▼
TECHNICAL_REVIEW
 │
 ▼
HUMAN_REVIEW
 │
 ▼
READY_TO_MERGE
 │
 ▼
MERGED
```

---

# States

## NEW

The work item has been created.

No analysis has started.

Entry:

- New issue created.

Exit:

- Workflow selected.

---

## SPECIFICATION

Business requirements are being written.

Owner:

Product Owner

Deliverable:

Product Specification

Exit:

Specification completed.

---

## SPECIFICATION_REVIEW

Requirements are validated.

Owner:

Product Spec Review

Deliverable:

Specification Review

Exit:

Specification approved.

---

## ARCHITECTURE_REVIEW

Technical solution is evaluated.

Owner:

Architect Review

Deliverable:

Architecture Review

ADR (if required)

Exit:

Architecture approved.

---

## PLANNING

Implementation is prepared.

Owner:

Technical Lead

Deliverables:

Implementation Plan

Task Breakdown

Exit:

Implementation can begin.

---

## IMPLEMENTATION

Code is produced.

Owners:

Backend Feature

Frontend Screen

Deliverables:

Implementation

Tests

Documentation

Exit:

Implementation complete.

---

## QA_REVIEW

Quality validation.

Owner:

QA Review

Deliverables:

QA Report

Exit:

Quality Gates passed.

---

## TECHNICAL_REVIEW

Engineering validation.

Owner:

Technical Lead

Deliverables:

Engineering Summary

Pull Request

Exit:

Ready for Product Owner.

---

## HUMAN_REVIEW

Business validation.

Owner:

Product Owner

Deliverables:

Approval

or

Requested Changes

Exit:

Approved.

---

## READY_TO_MERGE

Everything is approved.

Waiting only for merge.

Owner:

Technical Lead

Exit:

Merged.

---

## MERGED

Workflow completed.

Repository updated.

Documentation synchronized.

Retrospective may begin.

---

# Allowed Transitions

```
NEW
    ↓
SPECIFICATION
    ↓
SPECIFICATION_REVIEW
    ↓
ARCHITECTURE_REVIEW
    ↓
PLANNING
    ↓
IMPLEMENTATION
    ↓
QA_REVIEW
    ↓
TECHNICAL_REVIEW
    ↓
HUMAN_REVIEW
    ↓
READY_TO_MERGE
    ↓
MERGED
```

---

# Rollback Transitions

The following transitions are allowed.

QA_REVIEW

↓

IMPLEMENTATION

Reason:

Defects found.

---

TECHNICAL_REVIEW

↓

IMPLEMENTATION

Reason:

Engineering issues.

---

HUMAN_REVIEW

↓

SPECIFICATION

Reason:

Business requirements changed.

---

ARCHITECTURE_REVIEW

↓

SPECIFICATION_REVIEW

Reason:

Requirements incompatible with architecture.

---

PLANNING

↓

ARCHITECTURE_REVIEW

Reason:

Implementation reveals architectural issue.

---

# Forbidden Transitions

Never allow:

```
NEW
    ↓
IMPLEMENTATION
```

```
SPECIFICATION
    ↓
QA_REVIEW
```

```
IMPLEMENTATION
    ↓
MERGED
```

```
QA_REVIEW
    ↓
MERGED
```

```
ARCHITECTURE_REVIEW
    ↓
MERGED
```

Every workflow must respect engineering discipline.

---

# State Ownership

| State | Owner |
|---------|---------------------------|
| NEW | Technical Lead |
| SPECIFICATION | Product Owner |
| SPECIFICATION_REVIEW | Product Spec Review |
| ARCHITECTURE_REVIEW | Architect Review |
| PLANNING | Technical Lead |
| IMPLEMENTATION | Backend / Frontend |
| QA_REVIEW | QA Review |
| TECHNICAL_REVIEW | Technical Lead |
| HUMAN_REVIEW | Product Owner |
| READY_TO_MERGE | Technical Lead |
| MERGED | Technical Lead |

---

# Entry Rules

A state may begin only if:

- previous state completed;
- required artifacts exist;
- Entry Criteria satisfied.

---

# Exit Rules

A state ends only if:

- Exit Criteria satisfied;
- required artifacts produced;
- Stage Gate passed.

---

# Failure Handling

If a state fails:

- stop execution;
- preserve artifacts;
- document failure;
- return to the appropriate previous state.

Never skip a failed state.

---

# Traceability

Every work item must expose:

- Current State
- Current Owner
- Current Workflow
- Blocking Issues
- Current Artifacts
- Next State

No task should ever have an unknown status.

---

# Golden Rule

A workflow defines **what happens**.

The State Machine defines **where the work currently is**.

Every work item must always belong to exactly one state.
