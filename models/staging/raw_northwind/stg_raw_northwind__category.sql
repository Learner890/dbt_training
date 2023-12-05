with 

source as (

    select * from {{ source('raw_northwind', 'category') }}

),

renamed as (

    select
        id,
        categoryname,
        description

    from source

)

select * from renamed
