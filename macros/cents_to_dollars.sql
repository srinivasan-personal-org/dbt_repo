{% macro cents_to_dollars(column_name,scale=2) %}
    -- ({{ column_name }}/100::numeric(20,{{ scale }}))
    {%- set tables = ["stg_fact_fulfillment_billing", "t_dim_fulfillment_billing", "t_dim_warehouse", "t_fact_fulfillment_billing"] -%}

    {%- for table in tables %}
    create or replace table {{table}}
    clone {{table}};

    {% endfor -%}
{% endmacro %}