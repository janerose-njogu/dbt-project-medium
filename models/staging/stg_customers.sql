SELECT *
FROM {{ source("TPC-H", "customers") }}
