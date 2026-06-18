# Go spike — argis plugin plane

Fork baseline: `third_party/argis-extensions` @ `2fe3f952`

## Goal

Plugin/routing/SLM extensions POC before `packages/argis` absorption.

## Smoke (2026-06-18)

| Command | Result | Notes |
|---------|--------|-------|
| `go build ./...` | **fail** | missing `github.com/kooshapari/bifrost-extensions/api/graphql/gen`; hatchet module fetch error |

## Commands

```bash
cd third_party/argis-extensions
go build ./...
```
