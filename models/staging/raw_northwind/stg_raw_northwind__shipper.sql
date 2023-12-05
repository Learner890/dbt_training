with 

source as (

    select * from {{ source('raw_northwind', 'shipper') }}

),

renamed as (

    select
        id,
        companyname,
        phone

    from source

)

select * from renamed
