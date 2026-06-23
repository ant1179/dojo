#!/usr/bin/env bash

# Create directories
mkdir -p \
.ai/governance \
.ai/skills/shared \
.ai/skills/technical-lead \
.ai/skills/architect-review \
.ai/skills/product-spec-review \
.ai/skills/backend-feature \
.ai/skills/frontend-screen \
.ai/skills/qa-review \
.ai/workflows \
.ai/playbooks \
.ai/artifacts/definitions \
.ai/artifacts/templates \
.ai/artifacts/examples \
.ai/templates \
.ai/prompts/entrypoints \
.ai/prompts/system \
.ai/prompts/reusable \
.ai/standards \
.github/workflows \
docs/product \
docs/architecture/adr \
docs/standards \
docs/glossary

# Governance
touch \
.ai/governance/context.md \
.ai/governance/team.md \
.ai/governance/product-owner.md \
.ai/governance/stage-gates.md \
.ai/governance/orchestration.md

# Skills
touch \
.ai/skills/shared/coding-principles.md \
.ai/skills/shared/communication.md \
.ai/skills/shared/reporting.md \
.ai/skills/technical-lead/SKILL.md \
.ai/skills/architect-review/SKILL.md \
.ai/skills/product-spec-review/SKILL.md \
.ai/skills/backend-feature/SKILL.md \
.ai/skills/frontend-screen/SKILL.md \
.ai/skills/qa-review/SKILL.md

# Workflows
touch \
.ai/workflows/new-feature.md \
.ai/workflows/bug-fix.md \
.ai/workflows/refactoring.md \
.ai/workflows/technical-debt.md \
.ai/workflows/architecture-change.md \
.ai/workflows/research-spike.md \
.ai/workflows/release.md \
.ai/workflows/hotfix.md

# Playbooks
touch \
.ai/playbooks/create-adr.md \
.ai/playbooks/database-migration.md \
.ai/playbooks/dependency-upgrade.md \
.ai/playbooks/investigate-production-bug.md \
.ai/playbooks/review-pull-request.md

# Artifact definitions
touch \
.ai/artifacts/definitions/architecture-review.md \
.ai/artifacts/definitions/implementation-plan.md \
.ai/artifacts/definitions/qa-report.md \
.ai/artifacts/definitions/specification-review.md \
.ai/artifacts/definitions/technical-debt-report.md \
.ai/artifacts/definitions/engineering-summary.md \
.ai/artifacts/definitions/migration-plan.md \
.ai/artifacts/definitions/rollback-plan.md \
.ai/artifacts/definitions/release-report.md

# Artifact templates
touch \
.ai/artifacts/templates/ARTIFACT_TEMPLATE.md

# Artifact examples
touch \
.ai/artifacts/examples/.gitkeep

# Generic templates
touch \
.ai/templates/SKILL_template.md \
.ai/templates/WORKFLOW_template.md \
.ai/templates/ISSUE_template.md \
.ai/templates/ARTIFACT_template.md

# Prompts
touch \
.ai/prompts/entrypoints/create-feature.md \
.ai/prompts/entrypoints/fix-bug.md \
.ai/prompts/entrypoints/create-adr.md \
.ai/prompts/entrypoints/review-pr.md \
.ai/prompts/system/technical-lead.md \
.ai/prompts/system/backend.md \
.ai/prompts/system/frontend.md \
.ai/prompts/system/architect.md \
.ai/prompts/system/qa.md \
.ai/prompts/reusable/request-clarification.md \
.ai/prompts/reusable/summarize-changes.md \
.ai/prompts/reusable/generate-tests.md

# AI Standards
touch \
.ai/standards/naming.md \
.ai/standards/documentation.md \
.ai/standards/communication.md \
.ai/standards/review.md \
.ai/standards/prompting.md

# Product documentation
touch \
docs/README.md \
docs/product/vision.md \
docs/product/product-spec.md \
docs/product/roadmap.md \
docs/product/user-flows.md

# Architecture documentation
touch \
docs/architecture/architecture.md \
docs/architecture/system-overview.md

# Standards
touch \
docs/standards/coding.md \
docs/standards/api.md \
docs/standards/testing.md \
docs/standards/security.md \
docs/standards/documentation.md

# Glossary
touch \
docs/glossary/glossary.md

echo "✅ AI Engineering Operating System structure is ready."
