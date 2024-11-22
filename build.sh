#!/bin/bash

export PARTY1="Acme Co"
export PARTY2="Joint Venture Co"


# Expand variables into an intermediate markdown file for conversion to PDF

./mo DealMemoInput.md > DealMemoRendered.md


# Generate the PDF

pandoc --from=markdown --to=pdf DealMemoRendered.md -o ReadyForExecution.pdf