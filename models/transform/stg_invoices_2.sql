select * from {{ ref("stg_invoices") }}
where email is not null