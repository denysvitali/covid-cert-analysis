#!/bin/bash

echo "# Results"

for i in samples/*.txt; do
  echo "## $i:"
  echo
  echo '```plain'
  corona-decoder -v -f "$i"
  echo '```'
done
