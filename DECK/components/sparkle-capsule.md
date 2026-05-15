# Sparkle Capsule — Frozen State Component

> Component type: snapshot
> Role: time-sensitive JSON snapshot of a card's state at one moment

---

## What a Sparkle Capsule Is

A sparkle capsule is a frozen Club card.

It captures the state of a card — or a session, or a system — at one specific
moment. It does not update. It does not drift. It holds that moment exactly.

Sparkle capsules are the carbonite of the deck system.

---

## Why Capsules Exist

Work in motion is fragile. Sessions end. Contexts collapse.

A sparkle capsule says: *at this moment, the system looked like this.*

Future sessions can read the capsule and resume without needing to reconstruct
what was known. New agents can read the capsule and understand the state
they are entering without needing the full history.

---

## Capsule Format

```json
{
  "capsule_id": "",
  "timestamp": "",
  "session_anchor": "",
  "card": {
    "name": "",
    "suit": "",
    "drop_state": 0,
    "deck": ""
  },
  "holder": "",
  "position": "",
  "contents": {},
  "active_synergies": [],
  "open_questions": [],
  "next_step": "",
  "notes": ""
}
```

---

## When to Create a Capsule

```
- at the end of a build session
- before switching agents or tools
- when a Club card is about to be set down
- when a concept reaches a milestone worth preserving
- when the session is interrupted
- at the end of any turn logged in turns/log.md
```

---

## Capsule Naming Convention

```
sparkle-[card-slug]-[timestamp].json
```

Example: `sparkle-deck-schema-202605141806.json`

---

## Capsule Location

Capsules live inside their card's directory, or in a dedicated capsules archive.
The prima.yaml manifest should track active capsules.

---

## The Sparklization Journey

The file `The First Sparklization Journey.docx` in the root of this repo
is itself a sparkle capsule — the first frozen record of a full journey
through this system.

It is a Spade card holding the history of the first session.
