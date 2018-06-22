
# Dokumentasjon for filen *./VarFraParvus.sas*


## Makro `VarFraParvus`

### Beskrivelse

Hente variable fra Parvus til Magnus 

```
%VarFraParvus(dsnMagnus=,var_som=,var_avtspes=);
```

### Parametre

1. `dsnMagnus`: Datasettet du vil koble variable til. Kan være avdelingsoppholdsfil, sykehusoppholdsfil, avtalespesialistfil eller kombinasjoner av disse
2. `var_som`: Variable som skal kobles fra avdelingsopphold- eller sykehusoppholdsfil 
3. `var_avtspes`: Variable som skal kobles fra avtalespesialistfil.

### Eksempel

```
VarFraParvus(dsnMagnus=radiusfrakturer,var_som=cyto: komnrhjem2, var_avtspes=fagLogg komnrhjem2)
```

De varible du har valgt hentes fra aktuelle filer, kobles med variabelen *KoblingsID* og legges til inndatasettet 
Start gjerne med et ferdig utvalg om det er mulig, da vil makroen kjøre raskere og kreve mindre ressurser

### Endringsoversikt

- 5/10-16 Opprettet av Petter Otterdal
- juni 2017: Tilpasset versjon for tilrettelagte sett (Petter Otterdal)

