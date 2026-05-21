# Hopechest — Simple Container Component

> Component type: container
> Role: holds objects without forcing structure

---

## What a Hopechest Is

A hopechest is the simplest component a card can carry.

It holds things. It does not sort them, rank them, or demand they become
something before they are ready. It holds them safely while they figure
out what they are.

A hopechest is a pocket of dark nessing inside a card — structured enough
to survive, open enough not to force.

---

## What Goes in a Hopechest

Anything that has arrived but not yet been sorted:

```
- document fragments
- conversation excerpts
- unresolved ideas
- assets (images, files, links)
- character sketches
- tool outputs that haven't been integrated
- gifts of conversation waiting for a home
```

---

## Hopechest Format

```yaml
hopechest:
  created: ""              # timestamp
  holder: ""               # which card carries this hopechest
  items:
    - id: ""               # slug
      type: ""             # fragment | document | asset | conversation | unknown
      content: ""          # the thing itself, or a reference to it
      arrived: ""          # when it arrived
      status: ""           # holding | sorting | placed | dissolved
```

---

## The Hopechest Principle

A hopechest does not try to understand what it holds.

It holds faithfully. When the time comes, things can be removed and placed
into their proper structure. Until then: held.

---

## Relation to Intake

The intake layer (`intake/incoming.md`) is the hopechest for the whole system.

Individual cards carry their own hopechests for smaller-scale holding.

---

## When to Use a Hopechest vs Other Components

```
Hopechest           ← for holding things before they have structure
Sparkle Capsule     ← for freezing a state at a specific moment
Gifts of Conversation ← for relational fragments with emotional load
Liminal README      ← for writing to future readers or agents
```
