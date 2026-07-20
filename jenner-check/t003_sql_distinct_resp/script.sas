/* From creditcard (1).sas — Question 1:
   count the distinct respondent identifiers with PROC SQL, then print. */

/* Question 1, these data are cross-sectional data */
proc print data=class.creditcard(obs=10); run;

proc contents data=class.creditcard; run;

proc sql;
create table aa as
select count(distinct resp_id) AS identifiervariable
from class.creditcard;

;quit;
proc print data=aa; run;
