{{ config(materialized="table") }}

with final as (
select
    l.user_id,
    lifetime,
    cumulative_daily_rev,
    channel,
    campaign_id,
    attribution_cost,
    div0(cumulative_daily_rev, attribution_cost) as roi
from {{ ref("int_ltv") }} as l
inner join {{ ref("int_users_with_attribution") }} as a on l.user_id = a.user_id
)

select *, 
     {{rounding_up('roi', 2)}}
from final 