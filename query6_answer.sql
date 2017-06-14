#6. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients between January 1, 2011 to December 31, 2011?
#select * from leads where registered_datetime >= '2011-01-01 00:00:00' and registered_datetime < '2011-02-16 00:00:000' 


select cl.client_id, cl.first_name, cl.last_name, count(le.leads_id) as 'number of leads in 2011'  from clients cl
join sites si on cl.client_id = si.client_id
join leads le on si.site_id = le.site_id
where le.registered_datetime >= '2011-01-01 00:00:00' and le.registered_datetime < '2012-01-01 00:00:00'
group by cl.client_id
order by le.registered_datetime desc
