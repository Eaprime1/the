# TRANSFORM Registry

> TRANSFORM/registry.md
> Timestamp: `202605190752`
> All documents that have been transformed and committed to this repository.

---

## How to Read This Table

```
slug          = the .md filename (without extension)
origin_type   = where it came from
origin_id     = the source identifier
converted_at  = when the .md was created
version       = current version number
path          = location in this repository
```

---

## Registry

| slug | origin_type | origin_id | converted_at | version | path |
|------|-------------|-----------|--------------|---------|------|
| *(empty — first entry goes here)* | | | | | |

---

## Notes

- One row per document (not per version — update the row when version increments)
- If a document is re-converted, update `converted_at` and `version` in place
- Carbonite/working copies are not registered here — only permanent versions
- This file is append-only except for version updates to existing rows
