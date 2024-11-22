#!/bin/bash

export PARTY1="Acme Co"
export PARTY2="Joint Venture Co"

#Make multi line/array later.
export ANCILLARY_BUSINESSES=(ap4ap.org Rackrental.net "Starting Line Productions" YourDreamNameHere TeamRental MerchantsOfHope)
. ./mo
cat << EOF | mo
{{#ANCILLARY_BUSINESSES}}
    * {{.}}
{{/ANCILLARY_BUSINESSES}}
EOF

./mo DealMemoInput.md > DealMemoRendered.md
#./mo DealMemoInput.md 