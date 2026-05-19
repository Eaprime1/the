# Inbox Deck — Conversation Submission Queue

> Timestamp: `20260518`
> Status: ♦ Diamond-seed
> Holder: Eric Pace + ChatGPT
> Branch: `chatgpt/submission-intake-20260518`

---

## What This Is

The Inbox Deck is the receiving queue for concepts, excerpts, exports, and handoffs that originate in conversations or development spaces that cannot directly write to GitHub.

It exists so material can enter `the` with chain of custody, permission markers, and a clear path toward review.

---

## Chain of Custody Rule

Before a submitted item leaves this conversation or enters service, record:

- **Source** — where it came from.
- **Submitted by** — person, tool, agent, or conversation.
- **Permission marker** — open, gated, private, unknown.
- **Transformation** — copied raw, summarized, interpreted, rewritten, structured, or committed.
- **Destination** — intake file, card, issue, branch, PR, or archive.

The goal is not bureaucracy. The goal is memory with care.

---

## Queue States

```text
received   → material arrived here
witnessed  → material was read without forcing structure
triaged    → first deck/suit/drop reading completed
carded     → material became a DECK/cards/*.md card
branched   → material received a working branch
PR-opened  → material entered review
merged     → material entered main
archived   → material retained without active use
quarantined → material needs privacy, safety, or permission review
```

---

## Submission Record Template

```markdown
## [YYYY-MM-DD] — [short title]

- State: received
- Source: [conversation / upload / agent / repo pointer]
- Submitted by: [name/tool]
- Permission marker: [open / gated / private / unknown]
- Transformation: [raw / summarized / interpreted / structured]
- Destination: [pending]

### Raw / Summary

[material]

### First Intake Reading

- Deck: Unknown
- Suit-state: ♦ Diamond-seed
- Drop state: 0
- Holder: Eric Pace + ChatGPT

### Next Action

[what should happen next]
```

---

## Current Queue

## 2026-05-18 — This Conversation as Submission Point

- State: triaged
- Source: current ChatGPT conversation
- Submitted by: Eric Pace
- Permission marker: open within repo workflow
- Transformation: summarized and structured
- Destination: `docs/conversation-submission-gateway.md`, draft PR

### Raw / Summary

Eric proposed using this conversation as the submission point for content from other conversations and development activities that cannot access GitHub directly. The idea is to copy, upload, or otherwise submit material here, then use this chat plus the repository as a queue and chain-of-custody layer before material leaves this location or goes into service.

### First Intake Reading

- Deck: Work Deck + Synergy Spark
- Suit-state: ♣ Club-working
- Drop state: 1
- Holder: Eric Pace + ChatGPT

### Next Action

Open a draft PR for this branch and use a GitHub issue as the ongoing queue ledger.

---

## Operating Note

This deck should stay append-friendly. New submissions can be added here first, then split into dedicated files/cards when they grow large enough to deserve their own container.
