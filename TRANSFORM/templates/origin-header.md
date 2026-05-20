# Origin Header Template

> TRANSFORM/templates/origin-header.md
> Copy the block below into the top of any transformed .md file.

---

## For a Google Doc (gdoc) origin

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

---

## For a PDF origin

```yaml
---
document_type: markdown
origin_type: pdf
origin_id: ""
origin_url: ""
origin_title: ""
origin_owner: ""
origin_created: ""
origin_modified: ""
converted_at: ""
converted_by: ""
extraction_quality: clean
permanent: true
version: 1
---
```

---

## For a Word/DOCX origin

```yaml
---
document_type: markdown
origin_type: docx
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

---

## Field Reference

```
document_type   always "markdown" for .md files produced here
origin_type     gdoc | pdf | docx | txt | other
origin_id       Google Drive file ID, SHA-256 hash, URL, or slug
origin_url      Direct link to the source document
origin_title    Title exactly as it appeared in the source
origin_owner    Author email or name
origin_created  ISO 8601 datetime: 2026-05-19T12:39:56Z
origin_modified ISO 8601 datetime: 2026-05-19T07:52:00Z
converted_at    ISO 8601 datetime of this conversion
converted_by    Agent name, tool name, or "human"
extraction_quality  (pdf only) clean | partial | ocr-needed | degraded
permanent       true = this is the canonical .md version
version         1 = first conversion; increment when source updates
```
