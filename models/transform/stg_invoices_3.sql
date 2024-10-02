select 
invoice_number,
date,
last_modified_time,
email,
-- {{ cents_to_dollars('total') }} as usd_int,
total
from {{ ref("stg_invoices_2") }}
