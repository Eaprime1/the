# Process: PDF → Markdown

> TRANSFORM/processes/pdf-to-md.md
> Timestamp: `202605190752`

---

## Overview

This process takes a PDF (from Google Drive, local file, or URL) and produces
a permanent .md file in this repository.

PDFs vary widely in quality — some have clean text layers, some are scanned images.
The process adapts based on what's available.

---

## Step 1 — Identify the PDF and Its Origin ID

Determine the best available origin ID (see `types/pdf.md` for priority order):

```
If PDF is in Google Drive:
  origin_id = "gdrive:{file_id}"
  Use google_drive_retrieve_file_or_folder_by_id for metadata

If PDF is from a URL:
  origin_id = "url:{full_url}"
  origin_url = that URL

If PDF is a local file:
  origin_id = "sha256:{hash_of_file}"  (or filename-based slug)
```

Record title, owner/source, and creation date if available.

---

## Step 2 — Assess Extraction Quality

Before extracting, assess:

```
Does the PDF have a text layer?
  YES → clean or partial extraction possible
  NO  → OCR required (note as ocr-needed in frontmatter)

Is it a Google Drive PDF?
  YES → use google_drive_export_file to get plain text export

Is it a locally stored PDF?
  YES → use pdftotext or equivalent tool
```

Add to frontmatter:
```yaml
extraction_quality: clean | partial | ocr-needed | degraded
```

---

## Step 3 — Extract Content

**Path A — Google Drive PDF:**
```
Tool: google_drive_export_file
  mimeType: text/plain
  → returns plain text content

Then apply markdown formatting:
  - Detect headings by all-caps lines or lines followed by blank lines (font size not preserved in plain text)
  - Mark heading detection as best-effort — plain-text export loses font metadata
  - Detect lists by leading bullet characters or numbering
  - Mark tables as best-effort (PDFs rarely export tables cleanly)
```

**Path B — Text layer PDF (local):**
```
pdftotext -layout {file.pdf} -
  → pipe output, then apply markdown formatting heuristics
```

**Path C — OCR needed:**
```
Note extraction_quality: ocr-needed in frontmatter
Use available OCR tool → extract text
Mark all content as: "<!-- ocr-extracted — verify accuracy -->"
```

---

## Step 4 — Determine Destination Path

Same as gdoc-to-md Step 3:
```
docs/{topic-folder}/{slug}.md
```

Check for existing .md version before proceeding.

---

## Step 5 — Assemble the Markdown File

```markdown
---
document_type: markdown
origin_type: pdf
origin_id: "{origin_id}"
origin_url: "{origin_url or ''}"
origin_title: "{title}"
origin_owner: "{owner or source}"
origin_created: "{date if known or ''}"
origin_modified: "{date if known or ''}"
converted_at: "{ISO datetime of now}"
converted_by: "{agent name or 'human'}"
extraction_quality: "{clean|partial|ocr-needed|degraded}"
permanent: true
version: 1
---

# {title}

{extracted and formatted content}
```

---

## Step 6 — Manual Review Checkpoint

PDF extraction is imperfect. After assembly:

- [ ] Read through the converted content
- [ ] Fix obvious extraction artifacts (garbled characters, broken line breaks)
- [ ] Reconstruct any tables manually if the extraction lost structure
- [ ] Add `<!-- review: {issue note} -->` comments where accuracy is uncertain

---

## Step 7 — Commit, Register, Card

Same as gdoc-to-md Steps 5-7.
The `transform:` prefix is this system's defined extension of the repo's commit convention.

```bash
git commit -m "transform: pdf → md — {title}"
```

Register in `TRANSFORM/registry.md`.
Optionally create DECK card.

---

## Notes on PDF Limitations

Tables, multi-column layouts, footnotes, and sidebars often extract poorly.
When a document has heavy structure:
- Consider this a **metamorphosis** (not just transform) — structural choices required
- Document what was reorganized in the frontmatter or a `<!-- metamorphosis notes: -->` comment
- Increment `version` if you later re-extract from an improved OCR pass
