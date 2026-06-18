# Go spike — CLI subscription proxy

Fork baseline: `third_party/cliproxyapi-plusplus` @ `f156c0b2`

## Goal

Validate OpenAI-compatible `/v1/*` proxy surface; vibeproxy client absorbed per cliproxy++ `VIBEPROXY_ABSORPTION.md`.

## Smoke (2026-06-18)

| Command | Result | Notes |
|---------|--------|-------|
| `go build ./...` | **pass** | go.sum conflict resolved in cliproxyapi-plusplus#1030 |

## Commands

```bash
cd third_party/cliproxyapi-plusplus
go build ./...
```
