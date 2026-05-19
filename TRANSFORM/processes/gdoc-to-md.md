# Process: Google Doc → Markdown

> TRANSFORM/processes/gdoc-to-md.md
> Timestamp: `202605190752`

---

## Overview

This process takes a Google Doc (living in Google Drive) and produces
a permanent .md file in this repository.

The .md file carries the full content plus an origin header linking back
to the source document by file ID.

---

## Prerequisites

- Access to Google Drive (via MCP tools or API)
- The Google Doc's file ID or URL
- Write access to this repository

---

## Step 1 — Gather Origin Metadata

Use Google Drive tools to retrieve file metadata:

```
Tool: google_drive_retrieve_file_or_folder_by_id
  → id, name, createdTime, modifiedTime, owners, webViewLink

Record:
  origin_id       = id
  origin_title    = name
  origin_url      = webViewLink
  origin_owner    = owners[0].emailAddress
  origin_created  = createdTime
  origin_modified = modifiedTime
```

---

## Step 2 — Extract Document Content

```
Tool: google_docs_get_document_content
  → full document body as structured JSON

Convert to markdown:
  - Headings → ## / ### / ####
  - Bold → **text**
  - Italic → *text*
  - Lists → - item or 1. item
  - Links → [text](url)
  - Tables → markdown table syntax
  - Horizontal rules → ---
  - Inline code → `code`
  - Code blocks → ```language ... ```
```

Preserve the document's heading hierarchy exactly.
Do not reorganize content during transformation.
Reorganization is a separate step (metamorphosis), not part of transform.

---

## Step 3 — Determine Destination Path

```
Pattern: docs/{topic-folder}/{slug}.md

Derive slug from origin_title:
  - lowercase
  - spaces and punctuation → hyphens
  - collapse multiple consecutive hyphens to one
  - trim leading and trailing hyphens

Example:
  "The First Sparklization Journey"
  → docs/sparklization/the-first-sparklization-journey.md

If no clear topic folder: docs/incoming/{slug}.md
```

Check: does a .md version already exist for this document?
- If YES and content is the same → skip, no duplicate
- If YES and origin has been updated → increment version, update file
- If NO → proceed to Step 4

---

## Step 4 — Assemble the Markdown File

```markdown
---
document_type: markdown
origin_type: gdoc
origin_id: "{origin_id}"
origin_url: "{origin_url}"
origin_title: "{origin_title}"
origin_owner: "{origin_owner}"
origin_created: "{origin_created}"
origin_modified: "{origin_modified}"
converted_at: "{ISO datetime of now}"
converted_by: "{agent name or 'human'}"
permanent: true
version: 1
---

# {origin_title}

{converted content here}
```

---

## Step 5 — Commit to Repository

```bash
git add docs/{path}/{slug}.md
git commit -m "transform: gdoc → md — {origin_title}"
```

Include the origin_id in the commit body if desired:
```
transform: gdoc → md — The First Sparklization Journey

origin_id: 1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgVE2upms
```

---

## Step 6 — Register in Registry

Add an entry to `TRANSFORM/registry.md`:

```markdown
| {slug} | gdoc | {origin_id} | {converted_at} | {path in repo} |
```

---

## Step 7 — Create or Update the DECK Card (optional but recommended)

If this document is significant enough to be a card in the deck:
- Copy `DECK/cards/card-template.md` to `DECK/cards/{slug}.md`
- Set suit to ♦ Diamond (newly arrived)
- Point the Lineage > Origin to the gdoc URL

---

## Quality Checks

Before calling this done:
- [ ] Frontmatter has all fields filled
- [ ] origin_id resolves to a real Google Doc
- [ ] Content renders correctly as markdown
- [ ] No raw HTML left over from conversion
- [ ] Committed and registered

---

## Versioning

If the source Google Doc is updated after first conversion:
1. Re-run Steps 1-2
2. Compare content to existing .md
3. If changed: update file, increment `version`, update `origin_modified` and `converted_at`
4. Commit: `transform: update gdoc → md — {origin_title} (v{n})`
