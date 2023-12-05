with 

source as (

    select * from {{ source('northwind', 'employee') }}

),

renamed as (

    select
        id,
        lastname,
        firstname,
        title,
        titleofcourtesy,
        birthdate,
        hiredate,
        address,
        city,
        region,
        postalcode,
        country,
        homephone,
        extension,
        photo,
        notes,
        reportsto,
        photopath

    from source

)

select * from renamed
