with customer as (
    select * from {{ ref('stg_sf__customer') }}
),

orders as (
    select * from {{ ref('stg_sf__orders') }}
),

final as (
    select c_custkey as custkey,c_mktsegment,o_orderdate,o_orderstatus,o_totalprice
    from customer c
    join orders o
        on c.c_custkey = o.o_custkey
)

select * from final