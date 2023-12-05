with 

source as (

    select * from {{ source('raw_dvdrental', 'payment') }}

),

renamed as (

    select
        payment_id,
        customer_id,
        staff_id,
        rental_id,
        amount,
        payment_date

    from source

)

select * from renamed
