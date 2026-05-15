# Card Template

> Copy this file to create a new card.
> Fill in each field. Leave unknown fields as `?`.

---

## Card Identity

```yaml
card:
  name: ""                    # display name of this card
  id: ""                      # slug / unique identifier
  timestamp: ""               # when this card was first recognized
  suit: ""                    # ♦ diamond | ♣ club | ♥ heart | ♠ spade | aperture
  drop_state: 0               # 0 = not in play | 1 = singular | 5 = expanded field
  deck: ""                    # work | play-wonka | create-pandora | synergy-spark | unknown
```

---

## Lineage

```
Origin:     (what produced this card — conversation, document, session, person, tool)
Parent:     (which card or concept this grew from, if known)
Siblings:   (related cards at similar lifecycle state)
```

---

## Holder

```
Held by:    (player name / agent name / "unassigned")
Position:   (hand | table | deck | archive)
Permission: (open | gated | conditions: ...)
```

---

## Description

> One to three sentences describing what this card is and what it does.

---

## Components

- [ ] Hopechest — objects held by this card
- [ ] Sparkle Capsule — JSON snapshot (timestamped)
- [ ] Gifts of Conversation — relational fragments
- [ ] Liminal README — onboarding text for new readers

---

## Synergies

> Cards this card interacts with or produces emergent effects alongside.

```
+ [card name] — (how they interact)
```

---

## Intake Questions (answered)

```
1. What is the card?
2. Which deck?
3. Which suit?
4. Seed / working / pinnacle / interactive / aperture?
5. Who is holding it?
6. Hand / table / deck / archive?
7. Lineage?
8. Permission / condition?
9. Synergies?
10. New suit or deck needed?
```

---

## Micro-Wobble Result

```
Passed through deck system on: [timestamp]
Result: [in harmony | changed — see notes]
Notes:
```

---

## History

```
[timestamp] — [event: created / picked up / transitioned suit / carbonited / archived]
```
