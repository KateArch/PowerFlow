{{
    config(
        materialized='view'
    )
}}
SELECT *
FROM {{ source('powerflow', 'transactions') }}