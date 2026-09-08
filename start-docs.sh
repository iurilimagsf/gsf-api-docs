#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$HOME/.nvm/nvm.sh"
nvm use 22 >/dev/null
cd "$ROOT"
exec npx --yes mint dev --no-open --port 3000
