select 
invoice_number,
date,
last_modified_time,
email,
total
from {{ ref("stg_invoices_2") }}