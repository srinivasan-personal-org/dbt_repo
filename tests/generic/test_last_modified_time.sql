{% test test_last_modified_time(model, column_name) %}
    select substring({{ column_name }}, 1, 10) as last_modified_time
    from {{ model }}
    where substring({{ column_name }}, 1, 10) < '2024-01-01'
{% endtest %}
