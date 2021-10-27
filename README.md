# covid-cert-analysis

This repository contains the analysis performed on the leaked forged COVID-19 Certificates.
The certificates, contained in string format in the `samples/` directory, have been collected
from the 4Chan and Raid Forums posts.

The results are in the [RESULTS.md](./RESULTS.md) file and can be generated using `./verify.sh`.

Please - stay safe and get vaccinated!

## Disclaimers

This is a collection of forged COVID-19 Certificates that are:
- valid
- clearly forged

**I do not generate these certificates, nor I'll provide you with any contact to where you can get these. If you want a valid COVID-19 Certificate,
  get vaccinated or take a rapid test.**

**The samples have been collected by multiple sources and they're freely available on the internet (e.g: 4Chan and Raid Forums)**

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
