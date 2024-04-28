with raw_hosts as (

SELECT * FROM {{ source('airbnb', 'hosts') }}

)

SELECT 
ID as HOST_ID, 
NAME AS HOST_NAME, 
IS_SUPERHOST, 
CREATED_AT, 
UPDATED_AT

FROM raw_hosts