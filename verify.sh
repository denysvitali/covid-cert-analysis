#!/bin/bash
export TZ=UTC

declare -a INPUT_FILES

if [ $# -eq 0 ]; then 
  INPUT_FILES=( samples/*.txt )
else
  INPUT_FILES=("${@}")
fi

echo "# Results"

for i in "${INPUT_FILES[@]}"; do
  echo
  echo "## $i:"
  echo
  echo "![Certificate $i](${i/.txt/.png})"
  echo
  echo '```plain'
  TMP_STDERR=$(mktemp)
  if ! corona-decoder -v -f "$i" 2> "$TMP_STDERR"; then
    echo "Certificate is INVALID!"
    cat "$TMP_STDERR" | grep -o 'level=.*'
    echo "---"
    corona-decoder -f "$i"
  fi
  rm "$TMP_STDERR"
  echo '```'
done
