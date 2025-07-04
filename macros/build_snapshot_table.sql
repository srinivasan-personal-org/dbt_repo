{% macro build_snapshot_table(strategy, sql) %}

    select *,
        {{ strategy.scd_id }} as dbt_scd_id,
        {{ strategy.updated_at }} as dbt_updated_at,
        {{ strategy.updated_at }} as dbt_valid_from,
        nullif({{ strategy.updated_at }}, {{ strategy.updated_at }}) as dbt_valid_to,
        iff(equal_null({{ strategy.updated_at }}, {{ strategy.updated_at }}), 'Y', 'N') as system_current_flag
    from (
        {{ sql }}
    ) sbq

{% endmacro %}