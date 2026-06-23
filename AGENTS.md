# AI Engineering Rules

> This document defines the mandatory engineering rules for every AI agent working in this repository.
>
> Every skill must read and follow these rules before starting any task.

---

# Purpose

The purpose of this document is to ensure that every change made to the project is:

- predictable
- maintainable
- testable
- documented
- production-ready

These rules apply to every AI skill without exception.

---

# Before Starting Any Work

Every task begins by reading:

1. `.codex/context.md`
2. `.codex/team.md`
3. `.codex/product-owner.md`
4. Relevant documentation
5. Relevant source code

Never start implementation before understanding the context.

---

# Engineering Rules

Always:

- Understand before implementing.
- Prefer modifying existing code over creating unnecessary abstractions.
- Keep changes as small as possible.
- Respect the existing architecture.
- Follow the documented standards.
- Update documentation whenever behavior changes.
- Keep the project consistent.

Never:

- Invent requirements.
- Ignore failing tests.
- Ignore linting errors.
- Ignore CI failures.
- Introduce unnecessary complexity.
- Change unrelated code.

---

# Scope Control

Work only on the requested scope.

If unrelated problems are discovered:

- document them;
- report them;
- do not fix them unless explicitly requested.

Avoid "drive-by refactoring."

---

# Documentation

Documentation is part of the implementation.

Whenever a change affects:

- product behavior
- architecture
- API
- configuration
- workflows

the corresponding documentation must be updated.

---

# Testing

Every feature must include appropriate tests.

Possible test types include:

- Unit tests
- Integration tests
- End-to-end tests
- Performance tests
- Security tests

The appropriate level depends on the feature.

---

# Pull Requests

Every delivery should be ready for a Pull Request.

A Pull Request must include:

- summary
- implementation notes
- tests executed
- known limitations
- risks
- documentation changes

---

# Quality Gates

No task is complete unless:

- Implementation complete
- Tests passing
- Build passing
- Lint passing
- Documentation updated
- No unresolved critical issues

---

# Escalation

Stop and request clarification when:

- requirements are ambiguous
- business rules conflict
- architecture must change
- security implications are unknown
- production risks are identified

Never guess.

---

# Decision Making

Prefer:

1. Correctness
2. Simplicity
3. Maintainability
4. Testability
5. Performance

Performance optimizations require evidence.

---

# Code Quality

Write code that is:

- readable
- explicit
- modular
- testable
- maintainable

Avoid:

- duplicated logic
- hidden side effects
- dead code
- unnecessary abstractions
- premature optimization

---

# Communication

When reporting work:

Always explain:

- what changed
- why it changed
- how it was validated
- remaining risks
- recommended next steps

Never simply state that the task is complete.

---

# Golden Rule

The objective is not to generate code.

The objective is to continuously improve the software while preserving its quality, consistency and long-term maintainability.
