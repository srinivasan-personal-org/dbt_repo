{{ config(materialized='table') }}

with 

source as (

    select * from {{ source('dbt_svasan', 'LIMITED_COLUMNS') }}

),

renamed as (

    select
        _line,
        _fivetran_synced,
        ach_payment_initiated,
        invoice_id,
        customer_id,
        customer_name,
        company_name,
        status,
        invoice_number,
        date,
        due_date,
        due_days,
        email,
        type,
        billing_address_address,
        billing_address_state,
        billing_address_country,
        shipping_address_address,
        shipping_address_country,
        country,
        phone,
        created_by,
        total,
        balance,
        salesperson_name,
        shipping_charge,
        adjustment,
        created_time,
        last_modified_time,
        updated_time,
        is_viewed_by_client,
        has_attachment,
        is_emailed,
        current_sub_status,
        currency_id,
        currency_code,
        currency_symbol,
        is_pre_gst,
        template_type,
        no_of_copies,
        show_no_of_copies,
        invoice_url,
        transaction_type,
        reminders_sent,
        template_id,
        salesperson_id,
        write_off_amount,
        exchange_rate

    from source

)

select * from renamed
