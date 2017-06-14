#8. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients' 
#sites between January 1, 2011 to December 31, 2011? 
#Order this query by client id.  
#Come up with a second query that shows all the clients, the site name(s), and the total number of leads generated from each site for all time.

select 
	cl.client_id, 
    cl.first_name, 
    cl.last_name, 
	count(le.leads_id) as 'number of leads 2011'
from clients cl
join sites si on cl.client_id = si.client_id
join leads le on si.site_id = le.site_id
where le.registered_datetime >= '2011-01-01 00:00:00' and le.registered_datetime < '2012-01-01 00:00:00' 
group by cl.client_id

select 
	cl.client_id, 
    si.domain_name, 
	count(le.leads_id) as 'number of leads all time'
from clients cl
join sites si on cl.client_id = si.client_id
join leads le on si.site_id = le.site_id
group by cl.client_id
