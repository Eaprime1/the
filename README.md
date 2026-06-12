# THE — Shadow of Primal · pre(qoppa)uel Engine · House of Confusion 🏵️

THE is the intake engine and continuity structure for the Cards of Deck system.
It receives first, sorts later, and preserves lineage while work is still in motion.

## Start here in 10 minutes

1. Read `AGENTS.md`
2. Read `NAVIGO.md`
3. Read `DECK/DECK_SCHEMA.md`
4. Read `DECK/CARD_INTAKE.md`
5. Check `turns/log.md`
6. Check `DECK/components/liminal-readme.md`

## Repository standards

For naming, branch flow, vocabulary, and validation rules, use:

- `docs/architecture/repo-standards-index.md`

## Core structure

- `DECK/` — lifecycle architecture, suits, cards, components, mission decks
- `STREAMS/` — stream dispatches and stream documents
- `SHADOW_MATH/` — mathematical backbone and progression docs
- `TRANSFORM/` — document metamorphosis schema, processes, registry
- `intake/` — incoming fragments and triad routing
- `turns/` — append-only session memory
- `docs/registry/` — canonical registries (terms, symbols, streams, BirthMarks)

## Validation

Run these before review:

- `bash tools/prime_check.sh`
- `bash tools/scan_lexeme.sh`
- `bash tools/docs_consistency_check.sh`

## Contributing

Use `CONTRIBUTING.md` as the authoritative contribution policy.
