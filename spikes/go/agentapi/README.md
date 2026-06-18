# Go spike — agent terminal API

Fork baseline: `third_party/agentapi-plusplus` @ `5809a2e`

## Goal

Smoke-test native Go agent HTTP control plane before `packages/agentapi` absorption.

## Commands

```bash
cd third_party/agentapi-plusplus
go build ./...
go test ./...
```

## Smoke (2026-06-18)

| Command | Result | Notes |
|---------|--------|-------|
| `go build ./...` | **pass** | Fixed in agentapi-plusplus#539 (ClearMessages + httpapi repair) |

## Promotion

Pass checklist in phenotype-registry `GATEWAY_FEATURE_PARITY.md`.
