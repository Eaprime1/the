# TRANSFORM_SCHEMA — Document Metamorphosis System

> Timestamp: `202605190752`
> Branch: `claude/gdoc-to-markdown-Cm4Vp`
> Status: Diamond → building

---

## Origin Statement

Every document has a native type — the form it was born in.
When it crosses into a new type, it becomes a new **permanent version**
that carries the memory of its origin.

The work here is not copying.
The work is **metamorphosis** — a new form that holds lineage.

---

## The One-of-Each-Type Rule

```
A concept may have ONE canonical version per document type.

gdoc    → one .gdoc (origin, lives in Google Drive)
pdf     → one .pdf
md      → one .md (this repository, permanent)
docx    → one .docx

Exception: Carbonite (♣ Club suit) versions are working copies.
           Carbonite can temporarily multiply during active build (mitosis).
           When the build settles, they collapse back to one.
```

This mirrors the DECK principle: one card per concept per state.

---

## The Operations Vocabulary

```
transform     = change document type, preserve content, add origin header
metamorphosis = transform + structural reorganization (content reshapes for new type)
copy          = same type, same content, different location — only for archival
replicate     = copy with divergence permission — becomes its own branch
mitosis       = temporary multiplication of a working/carbonite document
                (expected to collapse back to one when done)
carbonize     = freeze a working document into a reference snapshot
```

These are not synonyms. Each has a specific meaning in this system.

---

## Document Type Registry

```
gdoc      = Google Doc (Google Drive)   — live, collaborative
pdf       = PDF                         — fixed, print/archive form
md        = Markdown (this repo)        — permanent, git-tracked, human+machine readable
docx      = Word/Open Document          — interchange format
txt       = Plain text                  — minimal, no formatting
```

---

## The Origin Header Standard

Every transformed .md document begins with a YAML frontmatter block:

```yaml
---
document_type: markdown
origin_type: gdoc           # gdoc | pdf | docx | txt | other
origin_id: ""               # Google Drive file ID or equivalent
origin_url: ""              # canonical URL to origin document
origin_title: ""            # title as it existed in origin
origin_owner: ""            # author / owner at time of conversion
origin_created: ""          # ISO 8601 date (from origin metadata)
origin_modified: ""         # ISO 8601 datetime (last modified in origin)
converted_at: ""            # ISO 8601 datetime of this conversion
converted_by: ""            # agent name / tool / human
permanent: true             # this is the permanent md version
version: 1                  # increment if re-converted from updated origin
---
```

This header makes the .md self-describing.
Anyone reading it knows exactly where it came from and when.

---

## Suit Assignment for Transformed Documents

```
♦ Diamond   = freshly converted, first arrival in repo — seed state
♣ Club      = actively being edited / refined after conversion — carbonite
♥ Heart     = in active use / being read / shared — interactive
♠ Spade     = archived, canonical, stable — pinnacle
```

A converted document enters as Diamond.
It moves through suits as it is worked on and eventually archived.

---

## Directory Structure

```
TRANSFORM/
├── TRANSFORM_SCHEMA.md         ← this file — architecture
├── types/
│   ├── gdoc.md                 ← Google Doc type profile
│   ├── pdf.md                  ← PDF type profile
│   └── markdown.md             ← Markdown type profile
├── processes/
│   ├── gdoc-to-md.md           ← GDoc → .md step-by-step process
│   └── pdf-to-md.md            ← PDF → .md step-by-step process
├── templates/
│   └── origin-header.md        ← copy-paste YAML header template
└── registry.md                 ← index of all documents entered here
```

---

## Connection to the DECK

Each transformed document **should have a card** in the DECK.
The card tracks the document across its lifecycle states.
The .md file is the document's presence in this repository.
The card is its presence in the card system.

They are parallel, not redundant.

---

## What Lives Here vs What Lives Elsewhere

```
TRANSFORM/          ← the system, schemas, processes, templates, registry
docs/               ← topic-organized output documents (where converted .md files go)
intake/             ← raw incoming material before classification
DECK/cards/         ← the card for each concept (points to its documents)
```

---

## Micro-Wobble Check

Before registering a document:
1. Does a .md version already exist for this concept?
2. If yes — is this an update (new version) or a duplicate?
3. Is this a carbonite/working copy or a permanent version?
4. Does the origin_id uniquely identify the source?

If all four pass — register and commit.
