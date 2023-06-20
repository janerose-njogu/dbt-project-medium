SELECT *
FROM {{ source("TPC-H", "customer") }}
