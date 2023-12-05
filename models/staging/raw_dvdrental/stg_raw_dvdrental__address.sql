with 

source as (

    select * from {{ source('raw_dvdrental', 'address') }}

),

renamed as (

    select
        address_id,
        address,
        address2,
        district,
        city_id,
        postal_code,
        phone,
        last_update

    from source

)

select * from renamed
