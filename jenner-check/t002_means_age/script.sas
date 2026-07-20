/* From creditcard (1).sas — Question 2:
   descriptive statistics for age, including the full percentile list
   the author requested, followed by PROC UNIVARIATE. */

proc means data=class.creditcard mean std max min median q1 q3 p5 p10 p25 p50 p75 p90 p95;
var age;
run;

proc univariate data=class.creditcard;
var age;
run;
