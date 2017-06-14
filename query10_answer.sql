#10. Write a single query that retrieves all the sites that each client owns. 
#Group the results so that each row shows a new client. 
#It will become clearer when you add a new field called 'sites' that has all the sites that the client owns. 
#(HINT: use GROUP_CONCAT)

select client_id, group_concat(domain_name) as sitelist from sites
group by client_id

