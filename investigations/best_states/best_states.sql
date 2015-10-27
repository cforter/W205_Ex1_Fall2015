with tests as(SELECT state, substr(percentage,2,length(percentage)-2) as percent_num
from states
where percentage <> 'Not Applicable'
and percentage <> 'Not Available'
order by state)
select state, avg(cast(percent_num as int)) as avg_percent
from tests
group by state
order by avg_percent desc
limit 10;