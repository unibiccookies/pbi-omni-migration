with costs as (
    select * from {{ ref('stg_ri_csp') }}
),

user_mappings as (
    select * from {{ ref('int_users_mapping') }}
)

select
    -- Cost Keys
    costs.unique_key,
    costs.payer_group,
    costs.reservation_type,
    
    -- Dates & Numbers
    costs.start_date,
    costs.end_date,
    costs.annual_cost,
    
    -- Categories
    costs.cloud_provider,
    
    -- FIX: Use the actual column "name" and alias it
    costs.name as service_name,
    
    -- Joined User Data
    user_mappings.owner_name,
    user_mappings.department_name,
    user_mappings.cost_center,
    user_mappings.manager_full_name,
    user_mappings.agreement_name

from costs
left join user_mappings
    on costs.payer_group = user_mappings.payer_group