with 

source as (

    select * from {{ source('raw_dvdrental', 'category') }}

),

renamed as (

    select
        category_id,
        name,
        last_update

    from source

)

select * from renamed
