[Ta meg tilbake.](./)


# boomraader

Boomraade-makro
Definerer boomr�der ut fra komnr og bydel
Boomraader(haraldsplass = 0, indreOslo = 0, bydel = 1)

Hvis haraldsplass ne 0: del Bergen i Haraldsplass og Bergen
Hvis indreOslo ne 0: Sl� sammen Diakonhjemmet og Lovisenberg
Hvis bydel = 0: Vi mangler bydel og m� bruke gammel boomr.-struktur 
       (bydel 030110, 030111, 030112 g�r ikke til Ahus men til Oslo)
F�lgende variabler nulles ut i begynnelsen av makroen, og lages av makroen:
- BoShHN
- VertskommHN
- BoHF
- BoRHF
- Fylke


