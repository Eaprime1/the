# Lifecycle Definition of Done 🏵️

This document defines completion criteria for cards, streams, and transformed documents.

## Card (DECK/cards)

A card is done when:
- intake fields are populated to the extent currently known
- suit-state and drop state are explicitly recorded
- lineage and holder are recorded
- at least one next action or stability note is present
- related docs/streams are linked when available

## Stream document (STREAMS/)

A stream item is done when:
- purpose/scope is clearly stated
- custody or source context is recorded
- active questions and next actions are listed
- routing destination (deck, docs, transform, or archive) is identified
- canonical path uses `STREAMS/` casing

## Transformed document (TRANSFORM + docs)

A transformed document is done when:
- origin metadata header is complete
- one canonical file per type rule is respected
- registry entry is updated when applicable
- links to source context and related card are present
- document has passed prime, lexeme, and docs consistency checks
