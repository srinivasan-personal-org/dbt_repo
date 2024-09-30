{% macro cents_to_dollars(column_name, scale=4) %}
    ({{ column_name }}/100::numeric(20,{{ scale }}))
{% endmacro %}