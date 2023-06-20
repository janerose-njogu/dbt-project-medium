SELECT *
FROM {{ source("TPC-H", "partsupp") }}
