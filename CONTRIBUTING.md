# Contributing to THE 🏵️

This is the authoritative contribution guide for this repository.

## Quick start

1. Read `AGENTS.md`
2. Read `NAVIGO.md`
3. Read `docs/architecture/repo-standards-index.md`
4. Check `turns/log.md`

## Branch protocol

- Preferred flow: `radix` → feature branch → PR to `radix`
- Never push directly to `main` or `published`
- Keep one workstream per branch and one purpose per PR

## Pull request requirements

- Use `.github/PULL_REQUEST_TEMPLATE.md`
- Keep scope focused
- List paths touched
- Include validation output and any intentional unresolved findings

## Required validation

- `bash tools/prime_check.sh`
- `bash tools/scan_lexeme.sh`
- `bash tools/docs_consistency_check.sh`

## Documentation expectations

- Preserve repository vocabulary and project voice
- Prefer canonical paths and consistent casing
- Record new recurring terms/symbols/streams/BirthMarks in `docs/registry/`

## Additional references

- Standards index: `docs/architecture/repo-standards-index.md`
- Lifecycle completion criteria: `docs/architecture/lifecycle-definition-of-done.md`
- Ownership map: `docs/architecture/ownership-map.md`
