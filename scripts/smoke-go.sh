#!/usr/bin/env bash
# Smoke-build Go submodule planes under third_party/.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
export GOPROXY="${GOPROXY:-https://proxy.golang.org,direct}"

failed=()
smoke() {
  local name="$1" rel="$2" sub="${3:-.}"
  local dir="$ROOT/$rel/$sub"
  if [[ ! -f "$dir/go.mod" ]]; then
    echo "SKIP $name: no go.mod in $sub"
    return 0
  fi
  echo "==> smoke $name ($dir)"
  if (cd "$dir" && go build ./...); then
  else
    failed+=("$name")
  fi
}

smoke agentapi-plusplus third_party/agentapi-plusplus .
smoke cliproxyapi-plusplus third_party/cliproxyapi-plusplus .
smoke argis-extensions third_party/argis-extensions .
smoke bifrost-transports third_party/bifrost transports

if ((${#failed[@]})); then
  echo "SMOKE FAIL: ${failed[*]}"
  exit 1
fi
echo "SMOKE OK"
