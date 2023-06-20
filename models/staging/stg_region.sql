SELECT *
FROM {{ source("TPC-H", "region") }}
