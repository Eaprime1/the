# Repository Standards Index 🏵️

This index is the single entry point for repository operating standards.

## Canonical paths and casing

- Use `STREAMS/` (uppercase) as canonical stream directory.
- Keep stable directory names as documented in `NAVIGO.md`.
- Use lowercase, hyphenated filenames unless a canonical artifact name requires otherwise.

## Branch flow

- Preferred path: `radix` → `feature/...` → PR to `radix`
- Do not push directly to `main` or `published`
- One branch per workstream, one PR per purpose

## Vocabulary alignment

- Follow repository vocabulary defined in:
  - `AGENTS.md`
  - `.github/copilot-instructions.md`
- Use repository terms consistently in docs, templates, and commit summaries.

## Validation requirements

Run before requesting review:

- `bash tools/prime_check.sh`
- `bash tools/scan_lexeme.sh`
- `bash tools/docs_consistency_check.sh`

## Canonical policy documents

- Contribution policy: `CONTRIBUTING.md`
- PR template: `.github/PULL_REQUEST_TEMPLATE.md`
- Lifecycle definition of done: `docs/architecture/lifecycle-definition-of-done.md`
- Ownership map: `docs/architecture/ownership-map.md`
