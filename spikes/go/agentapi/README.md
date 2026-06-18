# Go spike — agent terminal API

Fork baseline: `third_party/agentapi-plusplus` @ `7898704`

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
| `go build ./...` | **fail** | `x/acpio`: `*ACPConversation` missing `ClearMessages` — does not implement `screentracker.Conversation` |

## Promotion

Pass checklist in phenotype-registry `GATEWAY_FEATURE_PARITY.md`.
