#!/bin/bash
function generate_qr(){
  input_txt="$1"
  output_png="${```plain
VR 0: C=DE,ID=URN:UVCI:01DE/IZ14482A/2BYU1VFE8L2JDQJHY1QVSK#E,ISS=Robert Koch-Institut
KID: dhSzPDr4G2M=
Issued At: 2021-05-26 11:29:31 UTC
Signed By: SERIALNUMBER=CSM026164168,CN=Robert Koch-Institut,OU=Elektronischer Impfnachweis,O=Robert Koch-Institut,POSTALCODE=13353,STREET=Nordufer 20,L=Berlin,ST=Berlin,C=DE,2.5.4.97=#131044543a44452d33303233353331343435 (issued by: CN=D-TRUST CA 2-2 2019,O=D-Trust GmbH,C=DE,2.5.4.97=#130e4e545244452d4852423734333436)
Expiration: 2022-05-26 11:29:31 UTC
Personal Name: Sergio Delgado Castillo
DOB: 1950-01-01_txt/.Sergio/.png}"
  echo "Output: $output_png"
  cat "$input_txt" | tr -d '\n' | qrencode -t png -o "$output_png"
}
