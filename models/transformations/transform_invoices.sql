{{ config(
    materialized='table',
    tags=["transform_invoices"]
) }}


with 

transform_invoices as (
    select 
        invoice_id,
        customer_id,
        customer_name,
        company_name,
        status,
        invoice_number,
        date
    from {{ ref("stg_dbt_svasan__TABLES") }}
)

select * from transform_invoices
