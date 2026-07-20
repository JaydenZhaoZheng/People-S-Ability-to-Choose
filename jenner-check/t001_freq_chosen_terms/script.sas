/* From creditcard (1).sas — Questions 7 & 8:
   which non-dominant card was chosen most, and card ownership vs. choice. */

/* Question 7 */
proc freq data=class.creditcard;
table chosen_terms;
run;

/* Question 8 */
proc freq data=class.creditcard;
table chosedom havecard;
run;
