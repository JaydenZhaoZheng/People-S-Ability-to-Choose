/* cap input rows for the captured run */
options obs=100;

/* class libname in the original script points to a local library;
   here it maps to WORK so the bundle is self-contained. */
libname class (work);

/* sample credit-card survey data matching the columns the script reads
   (resp_id, video, tagline, chosedom, chosen_terms, havecard, age, male,
    highest_ed, hh_inc, confidence, easy_choice) */
data class.creditcard;
  length resp_id $20 video $12 tagline $22 chosen_terms $34 highest_ed $32 hh_inc $20;
  infile datalines dlm='|' dsd truncover;
  input resp_id $ video $ tagline $ chosedom chosen_terms $ havecard age male highest_ed $ hh_inc $ confidence easy_choice;
datalines;
R_F1A4D0A6|Baseline|Superfluous taglines|0|APR can change card|1|57|0|High School/GED|$50,000 - $74,999|4|6
R_138C13A9|Baseline|No taglines|0|High activation fee card|1|56|1|High School/GED|$50,000 - $74,999|6|4
R_AE8F4027|Implemental|Superfluous taglines|1|Dominant card|1|43|1|High School/GED|Over $150,000|1|7
R_0374DC29|Implemental|Superfluous taglines|1|Dominant card|1|33|0|Some College|$25,000 - $49,999|4|4
R_97A89063|Baseline|No taglines|0|High APR & variable limit card|1|61|0|Some College|$25,000 - $49,999|7|5
R_FBD88A08|Baseline|Superfluous taglines|0|High activation fee card|0|44|1|High School/GED|$25,000 - $49,999|4|2
R_0498D4E7|Implemental|Superfluous taglines|1|Dominant card|0|52|0|High School/GED|Over $150,000|4|4
R_819EBD36|Implemental|No taglines|1|Dominant card|1|200|0|High School/GED|$25,000 - $49,999|4|6
R_1D8D34E6|Implemental|No taglines|1|Dominant card|1|46|1|Master's Degree (MA/MS)|$25,000 - $49,999|4|1
R_5F2F98BA|Baseline|No taglines|0|High APR & variable limit card|1|19|0|Master's Degree (MA/MS)|Under $25,000|6|3
R_634DE5E9|Baseline|Superfluous taglines|0|High activation fee card|3|38|1|Doctoral Degree (PhD)|Under $25,000|4|1
R_27207162|Baseline|No taglines|0|High activation fee card|1|33|0|Professional Degree (MD, JD)|$75,000 - $99,999|4|7
R_18413F94|Implemental|Superfluous taglines|0|High activation fee card|1|59|0|Master's Degree (MA/MS)|$100,000 - $150,000|1|2
R_52847578|Implemental|No taglines|0|APR can change card|1|20|1|Doctoral Degree (PhD)|Under $25,000|5|7
R_AFB0E123|Implemental|Superfluous taglines|0|APR can change card|1|23|0|Doctoral Degree (PhD)|Over $150,000|3|2
R_37ADE08E|Baseline|Superfluous taglines|0|High activation fee card|0|.|0|2-year Degree (AA/AS)|$50,000 - $74,999|1|2
R_92286E4B|Baseline|Superfluous taglines|0|High activation fee card|0|31|0|Some College|$25,000 - $49,999|7|6
R_ED5D91B2|Implemental|Superfluous taglines|1|Dominant card|0|65|0|4-year Degree (BA/BS)|$100,000 - $150,000|5|6
R_68EFFE90|Implemental|Superfluous taglines|1|Dominant card|1|66|0|4-year Degree (BA/BS)|$100,000 - $150,000|7|4
R_2F4779A0|Implemental|No taglines|0|APR can change card|0|60|1|High School/GED|$100,000 - $150,000|5|5
R_BB4EC8DE|Implemental|Superfluous taglines|0|High activation fee card|0|33|1|High School/GED|$50,000 - $74,999|3|5
R_D45186F0|Implemental|No taglines|1|Dominant card|2|26|1|Doctoral Degree (PhD)|Over $150,000|6|1
R_8F9F8826|Implemental|No taglines|1|Dominant card|3|22|1|2-year Degree (AA/AS)|$100,000 - $150,000|2|6
R_193855F6|Implemental|Superfluous taglines|0|High activation fee card|1|45|1|Doctoral Degree (PhD)|Over $150,000|3|3
R_BC195060|Baseline|Superfluous taglines|0|APR can change card|1|42|0|Some College|Over $150,000|3|7
R_4D903BFC|Baseline|Superfluous taglines|1|Dominant card|3|29|0|Professional Degree (MD, JD)|Under $25,000|3|3
R_61FFD56D|Baseline|No taglines|0|High activation fee card|0|19|1|Some College|Under $25,000|1|3
R_3902D2AA|Baseline|No taglines|1|Dominant card|0|50|0|4-year Degree (BA/BS)|$25,000 - $49,999|7|4
R_4581F952|Baseline|Superfluous taglines|0|High activation fee card|0|59|1|Master's Degree (MA/MS)|$50,000 - $74,999|2|4
R_D05D2023|Implemental|Superfluous taglines|0|High APR & variable limit card|0|43|1|4-year Degree (BA/BS)|Over $150,000|5|6
R_0A7CA434|Baseline|No taglines|1|Dominant card|3|44|0|4-year Degree (BA/BS)|Under $25,000|6|1
R_56A15FC2|Baseline|Superfluous taglines|1|Dominant card|1|46|1|2-year Degree (AA/AS)|$100,000 - $150,000|2|2
R_3C639268|Implemental|No taglines|1|Dominant card|0|61|0|2-year Degree (AA/AS)|$50,000 - $74,999|3|2
R_DB6EAE9D|Implemental|No taglines|0|APR can change card|0|25|0|High School/GED|$100,000 - $150,000|7|6
R_077F2F47|Baseline|No taglines|1|Dominant card|2|45|0|High School/GED|$50,000 - $74,999|3|2
R_5F575DD4|Implemental|Superfluous taglines|1|Dominant card|1|52|1|Master's Degree (MA/MS)|$25,000 - $49,999|2|1
R_EC827149|Implemental|No taglines|0|High activation fee card|1|65|0|4-year Degree (BA/BS)|$75,000 - $99,999|1|6
R_463AFEEB|Implemental|Superfluous taglines|0|High APR & variable limit card|1|41|1|4-year Degree (BA/BS)|$75,000 - $99,999|3|7
R_8AE2E7C4|Baseline|Superfluous taglines|0|High activation fee card|0|53|1|High School/GED|Under $25,000|4|2
R_9876B57E|Baseline|Superfluous taglines|0|High activation fee card|1|59|1|Master's Degree (MA/MS)|$100,000 - $150,000|6|7
;
run;
