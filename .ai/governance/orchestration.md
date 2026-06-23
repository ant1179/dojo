# AI Engineering Orchestration

> This document defines how the AI Engineering Team executes work.
>
> It is the central orchestration layer of the Engineering Operating System.
>
> Every workflow, skill and artifact depends on these rules.

---

# Purpose

The objective of orchestration is to ensure that every task follows a predictable engineering process.

The orchestration layer is responsible for:

- selecting the appropriate workflow;
- invoking the correct skills;
- enforcing Stage Gates;
- validating deliverables;
- handling failures;
- coordinating handoffs;
- reporting progress to the Product Owner.

Orchestration coordinates work.

It does not perform specialist work.

---

# Core Principles

Always:

- Understand before acting.
- Prefer existing workflows.
- Execute one phase at a time.
- Validate before continuing.
- Escalate uncertainty.
- Keep work traceable.

Never:

- Skip a Stage Gate.
- Skip QA.
- Invent requirements.
- Continue after a failed validation.
- Merge incomplete work.

---

# Workflow Selection

Every task must begin by selecting exactly one primary workflow.

Examples:

| Situation | Workflow |
|-----------|----------|
| New functionality | new-feature |
| Defect | bug-fix |
| Code improvement | refactoring |
| Technical debt | technical-debt |
| Architecture evolution | architecture-change |
| Production incident | hotfix |
| Product release | release |
| Research | research-spike |

If no workflow clearly applies:

Stop.

Request clarification from the Product Owner.

---

# Workflow Lifecycle

Every workflow follows the same lifecycle.

```
Requested
    │
    ▼
Selected
    │
    ▼
Planned
    │
    ▼
Executing
    │
    ▼
Validating
    │
    ▼
Human Review
    │
    ▼
Completed
```

A workflow cannot move backwards without creating a new execution cycle.

---

# Phase Execution

For every phase:

1. Verify Entry Criteria.
2. Invoke the responsible skill.
3. Produce required artifacts.
4. Validate Exit Criteria.
5. Pass the work to the next phase.

Never invoke the next skill before the current phase has completed successfully.

---

# Stage Gates

Every workflow must pass the following mandatory gates.

Gate 1

Specification Approved

↓

Gate 2

Architecture Approved

↓

Gate 3

Implementation Complete

↓

Gate 4

Quality Assurance Passed

↓

Gate 5

Human Approval

↓

Completed

No gate may be bypassed unless explicitly defined by the workflow.

---

# Skill Invocation

Only invoke the skills required by the selected workflow.

Each skill:

- owns one responsibility;
- produces one or more artifacts;
- never performs another skill's responsibilities.

Skills collaborate through artifacts.

Never through assumptions.

---

# Artifact Flow

Every phase must produce explicit outputs.

Typical flow:

Product Specification

↓

Specification Review

↓

Architecture Review

↓

Implementation Plan

↓

Implementation

↓

QA Report

↓

Engineering Summary

↓

Pull Request

Every artifact must be complete before it is handed to the next participant.

---

# Failure Handling

Stop execution immediately if:

- Entry Criteria are not satisfied.
- Exit Criteria fail.
- Stage Gate fails.
- Required documentation is missing.
- A critical defect is discovered.
- The Product Owner changes the scope.

Do not continue until the blocking issue has been resolved.

---

# Escalation

Escalate to the Technical Lead when:

- skills disagree;
- workflow selection is unclear;
- dependencies block execution;
- quality standards cannot be met.

Escalate to the Product Owner when:

- business requirements change;
- priorities change;
- scope changes;
- product decisions are required.

---

# Parallel Execution

Parallel execution is allowed only when:

- tasks are independent;
- dependencies are explicit;
- merge conflicts are unlikely;
- architecture remains consistent.

Every parallel branch must independently satisfy its Stage Gates before merging.

---

# Context Management

Before invoking any skill:

1. Read AGENTS.md.
2. Read `.ai/governance/context.md`.
3. Read the selected workflow.
4. Read the required documentation.
5. Read relevant source code.

Never invoke a skill without sufficient context.

---

# Progress Tracking

Every workflow must expose its current state.

Example:

```
Workflow: New Feature

Current Phase:
QA Review

Status:
Running

Next Phase:
Technical Lead Review

Blocking Issues:
None
```

Progress should always be visible.

---

# Completion

A workflow is complete only if:

- all phases completed;
- every artifact delivered;
- all Stage Gates passed;
- documentation updated;
- Product Owner approved;
- repository ready for merge.

---

# Continuous Improvement

After every completed workflow:

Review:

- execution time;
- bottlenecks;
- unnecessary handoffs;
- recurring defects;
- documentation gaps;
- automation opportunities.

Document recommendations.

Do not automatically modify the process.

---

# Golden Rule

The objective of orchestration is not to maximize automation.

The objective is to maximize the reliability, predictability and quality of software delivery while minimizing unnecessary human intervention.

Automation exists to support engineering discipline.

It never replaces engineering judgement.
