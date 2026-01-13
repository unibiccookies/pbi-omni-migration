with mapping as (
    select * from {{ ref('stg_mapping') }}
),

users as (
    select * from {{ ref('stg_rsu_users') }}
)

select
    -- 1. The Link to Costs
    mapping.target_bus as payer_group,
    
    -- 2. The Context
    mapping.agreement_name,
    mapping.agreement_key,

    -- 3. The Enriched User Info
    users.full_name as owner_name,
    
    -- FIX: Use 'username' instead of 'email', but keep the alias 'owner_email'
    -- so we don't break the next table.
    users.username as owner_email, 
    
    users.department_name,
    users.cost_center,
    users.manager_full_name,
    users.is_active

from mapping
left join users
    on mapping.business_contact_id = users.user_id