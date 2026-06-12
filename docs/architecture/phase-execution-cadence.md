# Phase Execution Cadence 🏵️

Use one issue per phase with explicit acceptance criteria.

## Phase issue checklist

- Scope is limited to one phase
- Acceptance criteria are testable
- PR links are recorded in the issue thread
- Validation output is included before closure

## Acceptance criteria by phase

### Phase 1 — Structure and governance
- `STREAMS/` is canonical and lowercase duplicate path is removed
- One canonical PR template path remains
- One authoritative contribution policy is designated
- Standards index exists and is linked

### Phase 2 — Placeholder and onboarding debt
- Core placeholder values are replaced in `SECURITY.md` and `prima.yaml`
- `world/lore.md` and `world/factions.md` are project-specific
- `README.md` includes THE-specific onboarding with short start path

### Phase 3 — Operational quality checks
- CI workflow runs prime, lexeme, and docs consistency checks
- Docs consistency check validates links, path casing, and strict placeholder patterns
- PR template includes pass/fail policy for documentation-focused changes

### Phase 4 — System maturation
- Registry canonical files exist for terms, symbols, streams, and BirthMarks
- Lifecycle definition-of-done exists for cards, streams, and transformed docs
- Example cards exist to demonstrate schema usage
- Ownership map exists; CODEOWNERS is present

### Phase 5 — Execution rhythm
- One issue opened per phase using repository template
- Each issue tracks acceptance criteria and closure evidence
- Prime and lexeme checks are logged in PR summaries
