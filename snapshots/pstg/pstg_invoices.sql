{% snapshot pstg_invoices %}

    {{
        config(
            unique_key="id||'-'||name",
            strategy="timestamp",
            updated_at="_fivetran_synced::timestamp_ntz(9)",
            invalidate_hard_deletes=True,            
        )
    }}
    with
        stg_invoices as (
            SELECT *
            FROM
            dbt.public.invoices
            QUALIFY ROW_NUMBER() OVER (
                PARTITION BY
                id,
                name
                ORDER BY _FIVETRAN_SYNCED DESC
            ) = 1

        )
    select *
    from stg_invoices

{% endsnapshot %}
