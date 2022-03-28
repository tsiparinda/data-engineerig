select r.returned, date_trunc('day', order_date), extract('year' from ship_date), o.*
from stg.orders o
left join returns r on o.order_id=r.order_id
--group by 1,2
order by 1 desc
;