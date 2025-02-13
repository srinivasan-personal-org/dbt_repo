select name, age, city from {{ source("SOURCES_PROD_SOURCES_TEST_PUBLIC", "schema_evolution_check_tbl") }}
