%macro Episode_of_care_test(branch=master, debug = 0, lag_referanse = 0);

/*!
Makro for å teste EoC-makro.

Kjører EoC-makroen på et test-datasett (skde_arn.pseudosens_avd_magnus) med ulike parametre.
Sammenligner datasettene som spyttes ut med referanse-sett (skde_arn.ref_eoc[n]).

## input

- `branch` (=master) Valg av mappe der makroen ligger.
- `debug` (=0) Ikke slette midlertidige datasett hvis ulik null.
- `lag_referanse` (=0) Lagre ny referanse på disk hvis ulik null.

*/

%include "\\tos-sas-skde-01\SKDE_SAS\makroer\&branch.\episode_of_care.sas";

data startsett;
set skde_arn.pseudosens_avd_magnus (drop = Bdiag: drg drg_type episodeFag Hdiag: ICD10Kap  InstitusjonId KoblingsID korrvekt ncmp: ncsp: ncrp: polUtforende_1);
run;

data testset;
set startsett;
run;

%episode_of_care(dsn=testset);

%episode_of_care(dsn=testset);

%episode_of_care(dsn=testset);

%if &lag_referanse ne 0 %then %do;
data skde_arn.ref_eoc1;
set testset;
run;
%end;

proc compare base=skde_arn.ref_eoc1 compare=testset BRIEF WARNING LISTVAR;

data testset;
set startsett;
run;

%episode_of_care(dsn=testset, forste_hastegrad = 0);

%if &lag_referanse ne 0 %then %do;
data skde_arn.ref_eoc2;
set testset;
run;
%end;

proc compare base=skde_arn.ref_eoc2 compare=testset BRIEF WARNING LISTVAR;

data testset;
set startsett;
run;

%episode_of_care(dsn=testset, behold_datotid = 1);

%if &lag_referanse ne 0 %then %do;
data skde_arn.ref_eoc3;
set testset;
run;
%end;

proc compare base=skde_arn.ref_eoc3 compare=testset BRIEF WARNING LISTVAR;

data testset;
set startsett;
run;

%episode_of_care(dsn=testset, nulle_liggedogn = 1);

%if &lag_referanse ne 0 %then %do;
data skde_arn.ref_eoc4;
set testset;
run;
%end;

proc compare base=skde_arn.ref_eoc4 compare=testset BRIEF WARNING LISTVAR;


%if &debug eq 0 %then %do;
proc delete data = testset startsett;
%end;

%mend;
