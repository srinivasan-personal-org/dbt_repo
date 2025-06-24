{{
  config(
    pre_hook="select model from PROD_SOURCES.SALESFORCE.FIVETRAN_FORMULA_MODEL where object = 'serp_location_c';"
    
  )
}}


select {{'pre_hook'}} as count