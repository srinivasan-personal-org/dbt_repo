select * from {{source("sources_public","INVOICES_HISTORICAL")}}

union all

select * from {{source("sources_public","INVOICES_MONTLY")}}


