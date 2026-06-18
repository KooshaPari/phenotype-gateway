# phenotype-gateway

Canonical domain owner for agent API, LLM proxy, enterprise gateway, and router revamp.

**Charter:** [ADR-ECO-014](https://github.com/KooshaPari/phenotype-registry/blob/main/docs/adrs/ADR-ECO-014-phenotype-gateway-charter.md)

## Layout (Wave H6 scaffold)

| Path | Role |
|------|------|
| `docs/SPEC.md` | Unified gateway specification |
| `docs/UPSTREAM.md` | Fork pins per component |
| `third_party/` | Git submodule pins (interim) |
| `packages/` | Full absorption targets (promoted from submodules) |
| `spikes/go/` | Go-native stack experiments |
| `spikes/rust/` | Router / substrate spikes |
| `spikes/zig/` | Performance-critical paths |
| `spikes/mojo/` | Optional numeric/ML paths |

## Interim canonical forks

| Plane | Repo |
|-------|------|
| Agent terminal API | [agentapi-plusplus](https://github.com/KooshaPari/agentapi-plusplus) |
| CLI subscription proxy | [cliproxyapi-plusplus](https://github.com/KooshaPari/cliproxyapi-plusplus) |
| Enterprise gateway | [bifrost](https://github.com/KooshaPari/bifrost) |
| Plugins / SLM | [argis-extensions](https://github.com/KooshaPari/argis-extensions) |
| Router (interim MVP) | [OmniRoute](https://github.com/KooshaPari/OmniRoute) |

## Promotion rule

Submodule → `packages/<name>` when component passes checklist in `GATEWAY_FEATURE_PARITY.md`.
