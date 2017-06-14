#7. What query would you run to get a list of client names and the total # of leads we've generated for each client each month between months 1 - 6 of Year 2011?

select 
	cl.client_id, 
    cl.first_name, 
    cl.last_name, 
    concat(month(le.registered_datetime),"/",year(le.registered_datetime)) as MMYY,
	count(le.leads_id) as 'number of leads'
from clients cl
join sites si on cl.client_id = si.client_id
join leads le on si.site_id = le.site_id

where le.registered_datetime >= '2011-01-01 00:00:00' and le.registered_datetime < '2011-07-01 00:00:00'
group by MMYY
order by MMYY

