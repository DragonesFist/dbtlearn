with raw_listing as (

SELECT * FROM {{ source('airbnb', 'listings') }}

)

SELECT 
ID AS listing_id , 
LISTING_URL, 
NAME as listing_name, 
ROOM_TYPE, 
MINIMUM_NIGHTS, 
HOST_ID, 
PRICE as price_str, 
CREATED_AT, 
UPDATED_AT

FROM raw_listing