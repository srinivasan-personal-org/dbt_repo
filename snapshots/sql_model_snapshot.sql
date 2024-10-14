{% snapshot sql_model_snapshot %}

{{
    config(
        schema= 'public',
        database= 'dbt',
        strategy= 'timestamp',
        unique_key= 'invoice_number',
        updated_at= 'date',
        tags= 'google_drive',
    )
}}

select * from {{ ref("stg_invoices_2") }}

{% endsnapshot %}

