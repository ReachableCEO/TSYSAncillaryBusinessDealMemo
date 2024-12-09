#!/bin/bash

export PARTY1="Wyble Family Office LLC"
export PARTY2="ProForma Party 2"
export DEAL_MEMO_RENDERED_MD="DealMemoRendered.md"
export DEAL_MEMO_RENDERED_PDF="DealMemoRendered.pdf"

# Expand variables into an intermediate markdown file for conversion to PDF

./mo DealMemoInput.md > $DEAL_MEMO_RENDERED_MD

# Convert to PDF

pandoc \
$DEAL_MEMO_RENDERED_MD \
--template eisvogel \
--metadata-file=DealMemo.yml \
--from markdown \
--output $DEAL_MEMO_RENDERED_PDF
