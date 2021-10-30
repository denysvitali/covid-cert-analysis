#!/bin/bash
function generate_qr(){
  input_txt="$1"
  output_png="${input_txt/.txt/.png}"
  echo "Output: $output_png"
  cat "$input_txt" | tr -d '\n' | qrencode -t png -o "$output_png"
}
