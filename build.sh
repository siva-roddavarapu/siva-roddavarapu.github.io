#!/usr/bin/env bash
# Wraps src/site.html into the standalone index.html that GitHub Pages serves.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat src/site.html
  printf '\n</html>\n'
} > index.html
echo "built index.html"
