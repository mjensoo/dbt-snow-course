with

source as (
    select * from {{ ref('nation_codes') }}
),

renamed as (
    select
        -- Primary key
        nation_id          as nation_id,

        nation_name        as nation_name,
        region_key         as region_key,
        region_name        as region_name

    from source
)

select * from renamed