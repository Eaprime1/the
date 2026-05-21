# Type Profile: Markdown (md) 🍥

> TRANSFORM/types/markdown.md
> Timestamp: `202605190752`

---

## Identity

```
type_id:    md
full_name:  Markdown
extension:  .md
home:       this repository (git-tracked)
```

---

## What Makes a Markdown Document in This System

- Plain text with lightweight formatting syntax
- Git-tracked — every change has a commit history
- Human-readable in raw form
- Machine-parseable by tools, agents, static site generators
- Carries an **origin header** (YAML frontmatter) if it was transformed from another type

---

## The Permanent Version

When a document is transformed into .md and committed to this repo,
it becomes the **permanent version** for this repository.

- It does not replace the origin (gdoc stays in Drive, pdf stays where it is)
- It is the repository's canonical reference to that content
- It carries origin metadata so the link to the source is never lost

---

## Frontmatter Structure

A transformed .md file opens with:

```yaml
---
document_type: markdown
origin_type: gdoc
origin_id: ""
origin_url: ""
origin_title: ""
origin_owner: ""
origin_created: ""
origin_modified: ""
converted_at: ""
converted_by: ""
permanent: true
version: 1
---
```

A .md file written natively (not transformed) does not require this header.
But it is encouraged to include at minimum a `timestamp` and `status` in a comment or frontmatter.

---

## Naming Convention

```
{slug-of-title}.md

Examples:
  the-first-sparklization-journey.md
  life-support-dynamics-engine.md
  dark-nessing-primer.md
```

If a document has a parent folder (by topic), place it there:
```
docs/{topic}/{slug}.md
```

---

## Version Incrementing

If the source document is updated after the first conversion:
- Re-run the conversion process
- Increment `version` in frontmatter
- Update `origin_modified` and `converted_at`
- Commit with message: `doc: transform update {slug} to version {n}`

---

## Notes

Markdown is the **destination type** for this system's primary processes.
It is where documents come to live permanently inside the repository.

🍥
