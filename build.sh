#!/bin/bash

export PARTY1="Acme Co"
export PARTY2="Joint Venture Co"

#Make multi line/array later.
export ANCILLARY_BUSINESSES="TSYS Ancillary Businesses"

./mo DealMemoInput.md > DealMemoRendered.md
#./mo DealMemoInput.md 