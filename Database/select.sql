select "Users".name as "SUM > 1000"
from "Shopping_list" join "Users" on "Shopping_list".user_id = "Users".id
group by "Users".name having sum("Shopping_list".amount) > 1000;

select distinct "Users".name as "Month = June"
from "Shopping_list" join "Users" on "Shopping_list".user_id = "Users".id
where extract(month from "Shopping_list".data) = 06;

select sum("Shopping_list".amount) as "MIN SUM"
from "Shopping_list" join "Shops" on "Shopping_list".shop_id = "Shops".id
group by "Shops".name
order by sum("Shopping_list".amount)
limit 1;

select distinct "Users".name as "Month.User = Month.Purchase"
from "Shopping_list" join "Users" on "Shopping_list".user_id = "Users".id
where extract(month from "Users".birthdate) = extract(month from "Shopping_list".data)
