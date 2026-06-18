# Go spike — enterprise gateway

Fork baseline: `third_party/bifrost` @ `f9cec7bb`

## Goal

Vendor-fork smoke test; local deltas on `feat/bifrost-local-delta` only.

## Smoke (2026-06-18)

| Command | Result | Notes |
|---------|--------|-------|
| `go build ./...` | **pass** (vacuous) | Root has no Go packages at pin `f9cec7bb`; vendor tag + local-delta build TBD |

## Commands

```bash
cd third_party/bifrost
go build ./...
```

See fork `docs/VENDOR_PIN.md` and `docs/LOCAL_DELTA.md`.
