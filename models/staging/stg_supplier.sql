SELECT *
FROM {{ source("TPC-H", "supplier") }}
