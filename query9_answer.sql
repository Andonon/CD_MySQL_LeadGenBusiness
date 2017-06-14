#9. Write a single query that retrieves total revenue collected from each client for each month of the year. Order it by client id.

select cl.client_id as ClientID,
month(bi.charged_datetime) as 'Month',
year(bi.charged_datetime) as 'Year',
concat("$",format(sum(amount),2)) as 'Monthly Billing'
from billing bi
join clients cl on bi.client_id = cl.client_id
group by Month, Year
order by clientID, year, month