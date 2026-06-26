#!/usr/bin/env bash
set -euo pipefail

# Formal delivery template for bilingual empirical-paper projects.
# Edit PROJECT_ROOT only. The remaining paths assume the standard project layout:
# drafts/cn/paper_cn.md
# drafts/cn/paper_cn.docx
# drafts/en/paper_en.md
# drafts/en/paper_en.docx

PROJECT_ROOT="/ABSOLUTE/PROJECT/PATH"

PYTHON_BIN="/Users/xiaofei/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3"
FINALIZER="$HOME/.codex/skills/chinese-word-pro/scripts/finalize_submission_docx.py"

CN_MD="$PROJECT_ROOT/drafts/cn/paper_cn.md"
EN_MD="$PROJECT_ROOT/drafts/en/paper_en.md"
CN_TMP="$PROJECT_ROOT/drafts/cn/paper_cn_export_tmp.docx"
EN_TMP="$PROJECT_ROOT/drafts/en/paper_en_export_tmp.docx"
CN_DOCX="$PROJECT_ROOT/drafts/cn/paper_cn.docx"
EN_DOCX="$PROJECT_ROOT/drafts/en/paper_en.docx"

echo "[1/5] Check required paths"
test -f "$CN_MD"
test -f "$EN_MD"
test -f "$FINALIZER"
test -x "$PYTHON_BIN"

echo "[2/5] Citation-aware export"
cat <<EOF
Run the citation-aware export before continuing.

Chinese MCP export:
  mode=export_only
  markdown_path=$CN_MD
  output_filename=$CN_TMP

English MCP export:
  mode=export_only
  markdown_path=$EN_MD
  output_filename=$EN_TMP

If you later add a stable cite-rag CLI, replace this message block with that command.
EOF

if [[ ! -f "$CN_TMP" || ! -f "$EN_TMP" ]]; then
  echo "Temporary citation-aware exports are missing."
  echo "Create both *_export_tmp.docx files first, then rerun this template."
  exit 1
fi

echo "[3/5] Finalize Chinese DOCX"
"$PYTHON_BIN" "$FINALIZER" \
  --input-docx "$CN_TMP" \
  --output-docx "$CN_DOCX" \
  --lang cn \
  --mode journal_submission

echo "[4/5] Finalize English DOCX"
"$PYTHON_BIN" "$FINALIZER" \
  --input-docx "$EN_TMP" \
  --output-docx "$EN_DOCX" \
  --lang en \
  --mode journal_submission

echo "[5/5] Cleanup temporary exports"
rm -f "$CN_TMP" "$EN_TMP"

echo "Formal delivery complete."
echo "Main deliverables:"
echo "  $CN_DOCX"
echo "  $EN_DOCX"
