select * from {{ ref("ephemeral_invoices") }}
where BILLING_ADDRESS_STATE is not null
