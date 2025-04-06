{{config(
    materialized='ephemeral'
)}}

select * from {{ ref('invoice_snapshot') }}
where email is not null 
