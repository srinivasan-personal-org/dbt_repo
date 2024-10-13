{% macro convert_datetime(column_name) %}
cast(substring({{column_name}},1,10) as date )
{% endmacro %}


