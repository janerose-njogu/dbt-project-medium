select *
from {{ ref("stg_lineitem_orders") }} as stg_lineitem_orders
left join
    {{ ref("dim_customers") }} as dim_customer
    on stg_lineitem_orders.o_custkey = dim_customer.c_custkey
-- AND STG_LINEITEM_ORDERS.O_ORDERDATE
-- BETWEEN DIM_CUSTOMER.SYSTEM_START_DATE AND DIM_CUSTOMER.SYSTEM_END_DATE
-- LEFT JOIN {{ ref('dim_partsupp') }} AS DIM_PARTSUPP
-- ON STG_LINEITEM_ORDERS.L_PARTKEY = DIM_PARTSUPP.PS_PARTKEY
-- AND STG_LINEITEM_ORDERS.L_SUPPKEY = DIM_PARTSUPP.PS_SUPPKEY
left join
    {{ ref("dim_supplier") }} as dim_supplier
    on stg_lineitem_orders.l_suppkey = dim_supplier.s_suppkey
    -- LEFT JOIN {{ ref('stg_partsupp') }} AS STG_PARTSUPP
    -- ON STG_LINEITEM_ORDERS.L_PARTKEY = STG_PARTSUPP.PS_PARTKEY AND
