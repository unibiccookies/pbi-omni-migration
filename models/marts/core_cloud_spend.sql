with costs as (
    select * from {{ ref('stg_ri_csp') }}
),

user_mappings as (
    select * from {{ ref('int_users_mapping') }}
)

select
    costs.unique_key,
    costs.payer_group,
    costs.reservation_type,
    costs.purchase_account_name,
    costs.name,

    costs.instance_count,
    costs.purchase_account_id,
    costs.purchase_cost,
    costs.purchase_expected_saving,
    costs.purchase_type,

    costs.discount_percent,
    costs.new_total_product_coverage_percent,
    costs.purchase_coverage_increase_percent,

    costs.status,
    costs.scope,
    costs.region,
    costs.family as instance_family,

    costs.start_date,
    costs.end_date,
    costs.annual_cost,
    costs.hourly_commit,
    costs.renewal_date,
    costs.renewal_time_period,
    costs.date_loaded,

    cast(null as double) as list_price,
    cast(null as double) as savings_amount,

    costs.cloud_provider,
    costs.name as service_name,

    user_mappings.owner_name,
    user_mappings.department_name,
    user_mappings.cost_center,
    user_mappings.manager_full_name,
    user_mappings.agreement_name,
    user_mappings.is_active

from costs
left join user_mappings
    on costs.payer_group = user_mappings.payer_group