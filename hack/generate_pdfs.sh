#!/usr/bin/env bash

mkdir -p docs/pdf

for f in docs/*.md; do
  base=$(basename "$f" .md)
  echo "Converting $f → docs/pdf/caleb-kopp-resume-${base}.pdf"
  npx --yes md-to-pdf "$f"
  mv "${f%.md}.pdf" "docs/pdf/caleb-kopp-resume-${base}.pdf"
done

echo "Done:"
ls -lah docs/pdf/*.pdf
