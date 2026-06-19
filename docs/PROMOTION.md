# Promotion — submodule → `packages/`

Per [ADR-ECO-014](https://github.com/KooshaPari/phenotype-registry/blob/main/docs/adrs/ADR-ECO-014-phenotype-gateway-charter.md) and [GATEWAY_FEATURE_PARITY](https://github.com/KooshaPari/phenotype-registry/blob/main/docs/rationalization/GATEWAY_FEATURE_PARITY.md).

## Checklist (per plane)

- [ ] ≥80% feature rows mapped for component
- [ ] `go build ./...` smoke green on submodule pin
- [ ] Spike README documents pass/fail
- [ ] disposition-index `fsm: done` with PR ref
- [ ] Copy or re-home code to `packages/<plane>/` (no duplicate canonical forks)

## Order (recommended)

1. cliproxy++ (proxy surface) — **H10 anchor** (`packages/cliproxy`)
2. agentapi++ — **H10 anchor** (`packages/agentapi`)
3. bifrost — **H10 anchor** (`packages/bifrost`)
4. argis — **H10 anchor** (`packages/argis`)
5. router (Rust revamp — last)

## Dry-run

First promotion dry-run targets **agentapi** only when smoke + 80% parity — currently **blocked** on build failure.
