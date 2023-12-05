with 

source as (

    select * from {{ source('northwind', 'region') }}

),

renamed as (

    select
        id,
        regiondescription

    from source

)

select * from renamed
