select 1 as result
where (select count(*) from {{source("sources_public","INVOICES_MONTLY")}}) = 0
