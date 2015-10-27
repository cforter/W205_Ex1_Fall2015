CREATE EXTERNAL TABLE IF NOT EXISTS hcahps_state
(STATE varchar(500),
QUESTION varchar(500),
ANSWERCODE varchar(500),
ANSWER varchar(500),
PERCENTAGE varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/hcahps_state';

CREATE EXTERNAL TABLE IF NOT EXISTS hcahps_nat
(MEASUREID varchar(500),
QUESTION varchar(500),
ANSWER_DESC varchar(500),
PERCENTAGE varchar(500),
FOOTNOTE varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/hcahps_nat';

CREATE EXTERNAL TABLE IF NOT EXISTS hcahps_hosp
(PROVIDERID varchar(500),
HOSPITAL_NAME varchar(500),
ADDRESS varchar(500),
CITY varchar(500),
STATE varchar(500),
ZIP varchar(500),
COUNTY varchar(500),
PHONE varchar(500),
MEASUREID varchar(500),
QUESTION varchar(500),
ANSWER_DESC varchar(500),
STAR varchar(500),
FOOTNOTE varchar(500),
PERCENTAGE varchar(500),
PERCENT_FOOT varchar(500),
NUM_SURVEYS varchar(500),
SURVEYS_FOOT varchar(500),
RESPONSERATE varchar(500),
RESPONSE_FOOT varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/hcahps_hosp';

CREATE EXTERNAL TABLE IF NOT EXISTS care_nat
(MEASURENAME varchar(500),
MEASUREID varchar(500),
CONDITION varchar(500),
CATEGORY varchar(500),
SCORE varchar(500),
FOOTNOTE varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/care_nat';

CREATE EXTERNAL TABLE IF NOT EXISTS care_state
(STATE varchar(500),
CONDITION varchar(500),
MEASURENAME varchar(500),
MEASUREID varchar(500),
SCORE varchar(500),
FOOTNOTE varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/care_state';

CREATE EXTERNAL TABLE IF NOT EXISTS care_hosp
(PROVIDERID varchar(500),
HOSPITAL_NAME varchar(500),
ADDRESS varchar(500),
CITY varchar(500),
STATE varchar(500),
ZIP varchar(500),
COUNTY varchar(500),
PHONE varchar(500),
CONDITION varchar(500),
MEASUREID varchar(500),
MEASURENAME varchar(500),
SCORE varchar(500),
SAMPLE varchar(500),
FOOTNOTE varchar(500),
STARTDATE varchar(500),
ENDDATE varchar(500))
row format delimited fields terminated by "," ESCAPED BY '\\'
stored as textfile
LOCATION '/home/carson/hospital_compare/care_hosp';