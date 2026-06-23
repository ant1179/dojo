# Documentation Architecture

> This document defines the documentation structure of the project.
>
> Every piece of information has a single source of truth.
>
> Never duplicate information across multiple documents.
>
> If information belongs somewhere else, move it instead of copying it.

---

# Documentation Principles

The documentation follows four principles:

1. Single Source of Truth
2. Explicit Ownership
3. No Duplication
4. Progressive Detail

Every document answers one question and only one question.

---

# Documentation Map

```
docs/
│
├── README.md                 ← This document
│
├── product/
│   ├── vision.md
│   ├── product-spec.md
│   ├── roadmap.md
│   └── user-flows.md
│
├── architecture/
│   ├── architecture.md
│   ├── system-overview.md
│   └── adr/
│
├── standards/
│   ├── coding.md
│   ├── api.md
│   ├── testing.md
│   ├── security.md
│   └── documentation.md
│
├── glossary/
│   └── glossary.md
│
└── decisions/
```

---

# Product Documentation

Location:

```
docs/product/
```

Purpose:

Describe **what** the product is.

Contains:

- Vision
- Business objectives
- Functional specifications
- User journeys
- Roadmap

Never describe implementation details here.

---

# Architecture Documentation

Location:

```
docs/architecture/
```

Purpose:

Describe **how** the system is built.

Contains:

- System architecture
- Components
- Services
- Data flows
- Technical decisions

Never describe business priorities here.

---

# ADR

Location:

```
docs/architecture/adr/
```

Purpose:

Record important architectural decisions.

Every significant architectural choice should have an ADR.

Examples:

- Why PostgreSQL?
- Why FastAPI?
- Why React?
- Why Event Sourcing?

ADRs are immutable historical records.

---

# Standards

Location:

```
docs/standards/
```

Purpose:

Define engineering standards.

Examples:

- Coding conventions
- API conventions
- Testing strategy
- Security requirements
- Documentation standards

Standards evolve over time.

---

# Glossary

Location:

```
docs/glossary/
```

Purpose:

Define shared vocabulary.

Every business term should have a single definition.

Avoid multiple meanings for the same concept.

---

# Source of Truth

| Information | Location |
|-------------|----------|
| Product Vision | docs/product/vision.md |
| Product Specification | docs/product/product-spec.md |
| User Flows | docs/product/user-flows.md |
| Roadmap | docs/product/roadmap.md |
| System Architecture | docs/architecture/architecture.md |
| Technical Decisions | docs/architecture/adr/ |
| Engineering Standards | docs/standards/ |
| Business Vocabulary | docs/glossary/ |

If information already exists elsewhere, reference it.

Do not duplicate it.

---

# Documentation Ownership

| Document | Owner |
|----------|-------|
| Vision | Product Owner |
| Product Specification | Product Owner |
| Roadmap | Product Owner |
| Architecture | Architect |
| ADR | Architect |
| Standards | Technical Lead |
| Glossary | Product Owner |

---

# Documentation Lifecycle

When a new feature is created:

1. Update Product Specification if needed.
2. Update Architecture if impacted.
3. Create an ADR if an architectural decision is made.
4. Update Standards if engineering practices evolve.
5. Update Glossary if new terminology is introduced.

Documentation evolves together with the software.

---

# Golden Rule

Every question should have exactly one authoritative answer.

If you don't know where information belongs, update this document before creating a new document.
