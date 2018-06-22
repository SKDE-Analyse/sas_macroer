
# Dokumentasjon for filen *tests/reinnleggelser_test.sas*


## Makro `reinnleggelser_test`

Makro for å teste reinnleggelse-makro.

Kjører reinnleggelse-makroen på et test-datasett (`skde_tst.reinn_start`).
Sammenligner dette datasettet med en referanse (`skde_tst.ref_reinn1` og `skde_tst.ref_reinn2`).

### Parametre

- `branch = master`: Bestemmer hvilken reinnleggelse-makro som kjøres (hvilken mappe den ligger i)
- `debug = 0`: Hvis ulik null, sletter ikke midlertidig referansedatasett `testset1` og `testset2`.
- `lagNyRef = 0`: Hvis ulik null, lage startdatasettet `skde_tst.reinn_start` på nytt.
- `lagNyStart = 0` Hvis ulik null, lage referansedatasettene `skde_tst.ref_reinn1` og `skde_tst.ref_reinn2` på nytt.

