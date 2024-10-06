select total from {{ ref("stg_invoices") }}
where total > 40000