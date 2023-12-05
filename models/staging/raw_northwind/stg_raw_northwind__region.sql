with 

source as (

    select * from {{ source('raw_northwind', 'region') }}

),

renamed as (

    select
        id,
        regiondescription

    from source

)

select * from renamed
