
# Dokumentasjon for filen *./ForholdsMatrise.sas*

Inputvariabler: ant_datasett

Datasettene som skal brukes angis med %Let statements før makroen kjøres:

%Let dsn1=
%Let dsn2=
...
%Let dsnXX=

Makro som lager en "matrise" (egentlig en masse nye variabler) hvor 
antall (personer/episoder/liggedøgn...) og rater fra to eller flere 
ulike datasett deles på hverandre ihht tabellene under.

Eksempel med tre datasett:

				  |	antall1	(rv1)				antall1	(rv2)			antall1	(rv2)
	--------------|--------------------------------------------------------------------
	antall1	(rv1) |	antall_1_1 = rv1/rv1	antall_2_1 = rv2/rv1	antall_3_1 = rv3/rv1
				  |
	antall2	(rv2) |	antall_1_2 = rv1/rv2	antall_2_2 = rv2/rv2	antall_3_2 = rv3/rv2
				  |
	antall3 (rv3) |	antall_1_3 = rv1/rv3	antall_2_3 = rv2/rv3	antall_3_3 = rv3/rv3
	
	
		  |			rate1						rate2						rate3			
	------|----------------------------------------------------------------------------------
	rate1 |	andel_1_1 = rate1/rate1		andel_2_1 = rate2/rate1		andel_3_1 = rate3/rate1
		  |
	rate2 |	andel_1_2 = rate1/rate2		andel_2_2 = rate2/rate2		andel_3_2 = rate3/rate2
		  |
	rate3 |	andel_1_3 = rate1/rate3		andel_2_3 = rate2/rate3		andel_3_3 = rate3/rate3

Makroen lager også variablene: 

tot_rate=rate1 + rate2
andel_rate1=rate_1/tot_rate;
andel_rate2=rate_2/tot_rate;
tot_antall=antall_1+antall_2;

Kan f.eks brukes til å lage tabeller med utfyllende informasjon til høyre for en rate/andelsfigur.
	

## Makro `ForholdsMatrise`

