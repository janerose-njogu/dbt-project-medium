select *
from {{ ref("stg_lineitem") }} as stg_lineitem
inner join
    {{ ref("stg_orders") }} as stg_orders
    on stg_lineitem.l_orderkey = stg_orders.o_orderkey
inner join
    {{ ref("stg_partsupp") }} as stg_partsupp
    on stg_lineitem.l_partkey = stg_partsupp.ps_partkey
