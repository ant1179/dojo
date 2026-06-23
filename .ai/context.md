# Shared Context

> This document defines how every AI skill should find and prioritize information before working.
>
> It is the common entry point for all Codex skills.

---

# Purpose

This document answers one question:

**Before working, where should an AI skill look for information?**

It does not define roles, workflows, product requirements or architecture.

It only defines context priority and sources of truth.

---

# Reading Order

Before any task, every skill must read information in this order:

1. `AGENTS.md`
2. `.codex/context.md`
3. `.codex/team.md`
4. `.codex/product-owner.md`
5. `docs/README.md`
6. Product documentation
7. Architecture documentation
8. ADRs
9. Engineering standards
10. Relevant source code
11. Related issues or PRs

Do not skip earlier sources unless they do not exist yet.

---

# Source of Truth Map

| Information | Source |
|---|---|
| Team rules | `.codex/team.md` |
| Human/Product Owner role | `.codex/product-owner.md` |
| Documentation structure | `docs/README.md` |
| Product vision | `docs/product/vision.md` |
| Functional specification | `docs/product/product-spec.md` |
| Roadmap | `docs/product/roadmap.md` |
| User flows | `docs/product/user-flows.md` |
| Architecture | `docs/architecture/architecture.md` |
| Architectural decisions | `docs/architecture/adr/` |
| Coding standards | `docs/standards/coding.md` |
| API standards | `docs/standards/api.md` |
| Testing standards | `docs/standards/testing.md` |
| Security standards | `docs/standards/security.md` |
| Glossary | `docs/glossary/glossary.md` |
| Current implementation | Source code |
| Current work item | GitHub issue or task description |

---

# Priority Rules

When sources conflict:

1. Human Product Owner decisions override all product documents.
2. ADRs override architecture drafts.
3. Architecture documents override implementation patterns.
4. Standards override local style inconsistencies.
5. Approved specifications override informal discussion.
6. Source code reflects current state, not necessarily desired state.

Always report conflicts explicitly.

Never silently choose between conflicting sources.

---

# Missing Context

If required context is missing:

1. Identify the missing information.
2. Explain why it blocks the task.
3. Ask the Technical Lead or Product Owner for clarification.
4. Do not invent requirements.

---

# Working Rule

Every skill must begin by understanding:

- what is requested
- why it matters
- which documents govern the task
- which constraints apply
- what must not be changed

Only then may implementation or review begin.

---

# Golden Rule

Context first.

Implementation second.
