# Type Profile: Google Doc (gdoc)

> TRANSFORM/types/gdoc.md
> Timestamp: `202605190752`

---

## Identity

```
type_id:    gdoc
full_name:  Google Document
provider:   Google Drive / Google Workspace
native_url: https://docs.google.com/document/d/{file_id}/edit
```

---

## What Makes a gdoc

- Lives in Google Drive — not in this repo
- Has a **file ID** (the long alphanumeric string in the URL)
- Has a **revision history** maintained by Google
- Can be collaborative (multiple editors)
- MIME type: `application/vnd.google-apps.document`

---

## Origin ID Format

The file ID appears in the Google Doc URL:

```
https://docs.google.com/document/d/FILE_ID_HERE/edit
                                   ^^^^^^^^^^^^^
                                   this is the origin_id
```

Example:
```
https://docs.google.com/document/d/1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgVE2upms/edit
origin_id: 1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgVE2upms
```

---

## Metadata Available from Google Drive API

```
id              → origin_id
name            → origin_title
createdTime     → origin_created
modifiedTime    → origin_modified
owners[0].displayName  → origin_owner  (preferred; use emailAddress only if displayName unavailable)
webViewLink     → origin_url
```

---

## Transformation Targets

```
gdoc → md       ← primary (see processes/gdoc-to-md.md)
gdoc → pdf      ← export via Google Drive (print-to-PDF)
gdoc → docx     ← export via Google Drive (Word format)
gdoc → txt      ← export via Google Drive (plain text)
```

---

## Notes

A gdoc is **always the origin** in this system — it is not itself produced
by transformation. When you have a gdoc, you are at the source.

The gdoc remains in Google Drive. It is not imported into this repo.
Its .md transformation is what lives here permanently.
