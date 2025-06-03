{{ config(materialized='view')}}


SELECT * from {{ source('powerflow','registrations')}}
where user_id is not null