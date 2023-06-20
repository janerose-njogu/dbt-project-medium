SELECT *
FROM {{ source("TPC-H", "lineitem") }}
