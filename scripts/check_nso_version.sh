#!/usr/bin/env bash
set -euo pipefail

EXPECTED_VERSION="${1:-6.4}"

echo "Checking NSO version..."

NSO_VERSION=$(ncs --version | awk '{print $3}')

echo "Detected NSO version: $NSO_VERSION"

if [[ "$NSO_VERSION" != "$EXPECTED_VERSION"* ]]; then
    echo "ERROR: NSO version mismatch. Expected $EXPECTED_VERSION.x"
    exit 1
fi

echo "NSO version validation successful."
