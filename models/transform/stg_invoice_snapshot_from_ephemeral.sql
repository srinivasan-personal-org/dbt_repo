select * from {{ ref("stg_ephemeral_invoices") }}
where BILLING_ADDRESS_STATE is not null
