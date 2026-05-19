# Type Profile: PDF

> TRANSFORM/types/pdf.md
> Timestamp: `202605190752`

---

## Identity

```
type_id:    pdf
full_name:  Portable Document Format
provider:   any — Adobe, Google, print-to-PDF, LaTeX, etc.
extension:  .pdf
```

---

## What Makes a PDF

- Fixed-layout — content is rendered at a specific size and position
- Not natively editable as structured text
- May contain embedded fonts, images, tables
- Has no inherent "file ID" — identified by filename, hash, or Drive ID if hosted in Google
- Text can be extracted if not scanned (OCR needed for image-only PDFs)

---

## Origin ID Options

PDFs don't always have a single canonical ID. Use the best available:

```
Priority 1: Google Drive file_id (if PDF lives in Drive)
Priority 2: SHA-256 hash of the file
Priority 3: Filename + source URL
Priority 4: Manual slug (author-title-date)
```

Document in origin_id what type of identifier this is:

```yaml
origin_id: "gdrive:1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgVE2upms"
# or
origin_id: "sha256:a3f5b2..."
# or
origin_id: "slug:author-title-2026"
```

---

## Transformation Targets

```
pdf → md        ← primary (see processes/pdf-to-md.md)
pdf → txt       ← text extraction only, no formatting
```

---

## Extraction Quality Levels

```
clean           = text layer present, no OCR needed, high fidelity
ocr-needed      = image-only PDF or scanned, requires OCR
partial         = some text layers, some images — mixed fidelity
degraded        = poor scan quality, significant manual cleanup needed
```

Record extraction quality in the converted .md's frontmatter as `extraction_quality`.

---

## Notes

PDF is often a **downstream artifact** of a source document (gdoc, Word, etc.).
When a PDF and a gdoc exist for the same concept, the gdoc is the canonical origin.
Transform from the gdoc, not the PDF, when both are available.

When the PDF is the only form — it is the origin. Treat it as such.
