select * from {{ source('sources_google_drive', 'inivoices') }}
where total > 1500