#!/usr/bin/env bash
set -euo pipefail

STAGING="${1:?usage: $0 <staging-dir> [config-dir, must be outside staging-dir]}"
CONFIG="${2:-$(cd "$(dirname "$0")" && pwd)}"

docker run --rm \
  --mount "type=bind,source=${STAGING},target=/scan,readonly" \
  --mount "type=bind,source=${CONFIG},target=/th,readonly" \
  trufflesecurity/trufflehog:latest \
  filesystem \
  /scan \
  --json \
  --no-update \
  --concurrency 1 \
  --results=verified,unknown,unverified,filtered_unverified \
  --allow-verification-overlap \
  --max-decode-depth=5 \
  --config=/th/custom_detectors.yaml \
  --no-verification
