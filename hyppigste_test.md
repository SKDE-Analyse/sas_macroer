
# Dokumentasjon for filen *tests/hyppigste_test.sas*


## Makro `hyppigste_test`

Makro for å teste hyppigste-makro.

Kjører hyppigste-makroen på et test-datasett (`skde_tst.hyppigste_start`).
Sammenligner dette datasettet med en referanse (`skde_tst.ref_hyppigste_&navn`).

### Parametre

- `branch = master`: Bestemmer hvilken hyppigste-makro som kjøres (hvilken mappe den ligger i)
- `debug = 0`: Hvis ulik null, sletter ikke midlertidig referansedatasett `testset_:`.
- `lagNyRef = 0`: Hvis ulik null, lage startdatasettet `skde_tst.hyppigste_start` på nytt.
- `lagNyStart = 0` Hvis ulik null, lage referansedatasettene `skde_tst.ref_hyppigste_&navn` på nytt.

### Tester

#### Test default

Kjører med `%hyppigste(VarName=hdiag, data_inn=skde_tst.hyppigste_start, test = testset_&navn);`

#### Test Ant_i_liste

Kjører med `Ant_i_liste = 20`

#### Test VarName

Kjører med `VarName=behsh`

#### Test where

Kjører med `Where=Where Behrhf=1`

