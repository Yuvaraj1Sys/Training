{{
    config(
        materialized='incremental',
        unique_key = 'custkey'
    )
}}

with source as (
    select * from {{ ref('int_prac__customer_order_join') }}
)

select * from source