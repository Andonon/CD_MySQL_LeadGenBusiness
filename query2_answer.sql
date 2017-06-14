#2. What query would you run to get total revenue collected from the client with an id of 2?

select client_id, concat("$",format(sum(amount), 2)) as 'Total Billing' from billing
where client_id = 2