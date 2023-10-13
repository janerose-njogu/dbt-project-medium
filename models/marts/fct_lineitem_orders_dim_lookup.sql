SELECT *
FROM {{ ref('stg_lineitem_orders_dim_lookup') }}
