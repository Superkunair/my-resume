#!/usr/bin/env bash
# Build Word exports from resume Markdown. Requires Pandoc: https://pandoc.org/
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc not found. Install with: brew install pandoc" >&2
  exit 1
fi

mkdir -p assets

pandoc index.md -o assets/resume-en.docx \
  --from=markdown+yaml_metadata_block \
  --standalone

pandoc es/index.md -o assets/resume-es.docx \
  --from=markdown+yaml_metadata_block \
  --standalone

echo "Wrote assets/resume-en.docx and assets/resume-es.docx"
