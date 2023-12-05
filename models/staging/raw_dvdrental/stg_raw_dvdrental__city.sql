with 

source as (

    select * from {{ source('raw_dvdrental', 'city') }}

),

renamed as (

    select
        city_id,
        city,
        country_id,
        last_update

    from source

)

select * from renamed
