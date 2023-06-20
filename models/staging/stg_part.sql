SELECT *
FROM {{ source("TPC-H", "part") }}
