with 

source as (

    select * from {{ source('raw_northwind', 'territory') }}

),

renamed as (

    select
        id,
        territorydescription,
        regionid

    from source

)

select * from renamed
