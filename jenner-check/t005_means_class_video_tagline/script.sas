/* From creditcard (1).sas — Question 12:
   mean dominant-card choice share by video and tagline via PROC MEANS
   with CLASS and an OUTPUT OUT= summary, then print the summary. */

proc means data=class.creditcard mean noprint;
    class video tagline;
    var chosedom;
    output out=dominant_card_summary mean=choice_share;
run;

/* Print the results */
proc print data=dominant_card_summary;
    var video tagline choice_share;
run;
