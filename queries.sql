select * from owners o left join vehicles v on o.id=v.owner_id;

select o.first_name, o.last_name, count(*)
from owners o join vehicles v on o.id=v.owner_id
group by o.id
order by o.first_name;

select o.first_name, o.last_name, avg(v.price) as average_price, count(*) as "count"
from owners o join vehicles v on o.id=v.owner_id
group by o.id
having count(*) > 1 and avg(v.price) >10000
order by o.first_name desc;

