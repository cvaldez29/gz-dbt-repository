with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select
        date_date as date_date,
        paid_source as paid_source,
        campaign_key as campaign_key,
        campgn_name as campaign_name,
        cast(ads_cost as float64) as ads_cost,
        impression as impression,
        click as click

    from source

)

select * from renamed
