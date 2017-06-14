#1. What query would you run to get the total revenue for March of 2012?

select concat(month(charged_datetime), "/", year(charged_datetime)) as Month, concat("$",format(sum(amount), 2)) as 'Total Billing' from billing
where charged_datetime >= '2012-03-01 00:00:00' and  charged_datetime < '2012-04-01 00:00:00'
group by  Month
