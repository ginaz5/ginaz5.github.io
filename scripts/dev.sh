#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [[ ! -f .env.local ]]; then
  echo "ERROR: .env.local not found. Copy .env.local.example and fill in your values:" >&2
  echo "  cp .env.local.example .env.local" >&2
  exit 1
fi

set -a
source .env.local
set +a

exec hugo serve "$@"
