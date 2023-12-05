with 

source as (

    select * from {{ source('northwind', 'territory') }}

),

renamed as (

    select
        id,
        territorydescription,
        regionid

    from source

)

select * from renamed
