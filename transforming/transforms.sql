CREATE TABLE procedures AS 
SELECT measurename, score
from care_hosp;

CREATE TABLE states AS 
SELECT state, question, percentage
from hcahps_state
where question like "%hospital a rating of 9 or 10 on a scale%";

CREATE TABLE hospitals AS 
SELECT hospital_name, question, star, percentage
from hcahps_hosp
where question like "%Recommend hospital - star rating%";