# Go spike — CLI subscription proxy

Fork baseline: `third_party/cliproxyapi-plusplus` @ `866ca6dd`

## Goal

Validate OpenAI-compatible `/v1/*` proxy surface; vibeproxy client absorbed per cliproxy++ `VIBEPROXY_ABSORPTION.md`.

## Smoke (2026-06-18)

| Command | Result | Notes |
|---------|--------|-------|
| `go build ./...` | **fail** | `go.mod` has unresolved merge conflict markers at pin `866ca6dd` |

## Commands

```bash
cd third_party/cliproxyapi-plusplus
go build ./...
```
