with costs as (
    select * from {{ ref('stg_ri_csp') }}
)

select
   
    costs.unique_key,
    costs.name,
    costs.purchase_account_id,
    costs.purchase_account_name,

    costs.payer_group,
    costs.cloud_provider,
    costs.region,
    costs.status,
    costs.purchase_type,
    costs.reservation_type,
    costs.scope,
    costs.family as instance_family,

    costs.annual_cost,
    costs.purchase_cost,
    costs.purchase_expected_saving,
    costs.hourly_commit,
    costs.instance_count,

    costs.discount_percent,
    costs.new_total_product_coverage_percent,
    costs.purchase_coverage_increase_percent,

    costs.start_date,
    costs.end_date,
    costs.renewal_date,
    costs.renewal_time_period,
    costs.date_loaded

from costs