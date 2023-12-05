with 

source as (

    select * from {{ source('raw_northwind', 'employeeterritory') }}

),

renamed as (

    select
        id,
        employeeid,
        territoryid

    from source

)

select * from renamed
