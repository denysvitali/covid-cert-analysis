# covid-cert-analysis

This repository contains the analysis performed on the leaked forged COVID-19 Certificates.
The certificates, contained in string format in the `samples/` directory, have been collected
from the 4Chan and Raid Forums posts.

The results are in the [RESULTS.md](./RESULTS.md) file and can be generated using `./verify.sh`.

Please - stay safe and get vaccinated!

## Requirements

- Bash
- [corona-decoder](https://github.com/denysvitali/corona-decoder)
- zbarimg (to decode a QR code into text)

## Generate Results

```sh
./verify.sh > RESULTS.md
```

## Analyze a single certificate

```sh
corona-decoder -v -f ./samples/mickeymouse.txt
```
