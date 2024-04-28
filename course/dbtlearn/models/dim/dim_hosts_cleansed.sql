{{
    config(
        materialized = 'view'
    )
}}
with src_hosts as (

    select * from {{ ref('src_hosts')}}

)

select 
HOST_ID, 
case 
    when host_name is not null then host_name
    when host_name is null then 'Anonymous'
end as host_name,
IS_SUPERHOST, 
CREATED_AT, 
UPDATED_AT
from src_hosts