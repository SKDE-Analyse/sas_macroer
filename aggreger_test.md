
# Dokumentasjon for filen *tests/aggreger_test.sas*


## Makro `aggreger_test`

Makro for å teste aggreger-makro.

Kjører aggreger-makroen på et test-datasett (`skde_tst.agg_start`).
Sammenligner dette datasettet med en referanse (`skde_tst.ref_agg_&navn`).

### Parametre

- `branch = master`: Bestemmer hvilken aggreger-makro som kjøres (hvilken mappe den ligger i)
- `debug = 0`: Hvis ulik null, sletter ikke midlertidig referansedatasett `testset_:`.
- `lagNyRef = 0`: Hvis ulik null, lage startdatasettet `skde_tst.agg_start` på nytt.
- `lagNyStart = 0` Hvis ulik null, lage referansedatasettene `skde_tst.ref_agg_&navn` på nytt.

