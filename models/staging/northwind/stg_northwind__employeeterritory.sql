with 

source as (

    select * from {{ source('northwind', 'employeeterritory') }}

),

renamed as (

    select
        id,
        employeeid,
        territoryid

    from source

)

select * from renamed
