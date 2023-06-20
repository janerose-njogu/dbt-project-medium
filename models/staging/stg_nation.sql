SELECT *
FROM {{ source("TPC-H", "nation") }}
