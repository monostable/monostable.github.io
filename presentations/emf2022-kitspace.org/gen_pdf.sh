#!/usr/bin/env sh

# This, or simply use Chrome Print and get better results lol

output=${1:-"emf2022-lightning-kitspace.pdf"}
url="http://localhost:8000/presentations/emf2022-kitspace.org"

decktape -s 1280x720 remark $url $output
