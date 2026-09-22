#!/usr/bin/env bash
# Assembles src/ into dist/. Idempotent: safe to run repeatedly.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/src"
DIST_DIR="$SCRIPT_DIR/dist"

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"
cp "$SRC_DIR"/*.html "$DIST_DIR"/
cp "$SRC_DIR"/*.css "$DIST_DIR"/

echo "Built $(ls "$DIST_DIR" | wc -l | tr -d ' ') files into $DIST_DIR"
