with 

source as (

    select * from {{ source('dbt_svasan', 'MY_SECOND_DBT_MODEL') }}

),

renamed as (

    select
        id

    from source

)

select * from renamed
