with tests as(SELECT hospital_name, substr(star,2,length(star)-2) as star_num
from hospitals
where star <> 'Not Applicable'
and star <> 'Not Available'
order by hospital_name)
select hospital_name, avg(cast(star_num as int)) as avg_star
from tests
group by hospital_name
order by avg_star desc
limit 10;