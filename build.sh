#!/bin/bash

export PARTY1="ProForma Party 1"
export PARTY2="ProForma Party 2"


# Expand variables into an intermediate markdown file for conversion to PDF

./mo DealMemoInput.md > DealMemoRendered.md

# Generate the PDF

pandoc \
DealMemoRendered.md \
--template eisvogel \
--metadata-file=DealMemo.yml \
--from markdown \
--output DealMemo.pdf 
