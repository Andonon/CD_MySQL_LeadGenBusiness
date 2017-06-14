#4. What query would you run to get total # of sites created per month per year for the client with an id of 1? What about for client=20?


select concat(month(created_datetime), "/", year(created_datetime)) as 'Month/Year', client_id, count(site_id)
from sites where client_id in (1,20) group by 'Month/Year', site_id;

