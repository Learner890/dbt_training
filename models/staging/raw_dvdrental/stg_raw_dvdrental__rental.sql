with 

source as (

    select * from {{ source('raw_dvdrental', 'rental') }}

),

renamed as (

    select
        rental_id,
        rental_date,
        inventory_id,
        customer_id,
        return_date,
        staff_id,
        last_update

    from source

)

select * from renamed
