select *,{{convert_datetime('last_modified_time')}} as date_last_modified_time from {{ ref("stg_invoices") }}
where email is not null
