with mapping as (
    select * from {{ ref('stg_mapping') }}
),

users as (
    select * from {{ ref('stg_rsu_users') }}
)

select
    mapping.target_bus as payer_group,
    
    mapping.agreement_name,
    mapping.agreement_key,

    users.full_name as owner_name,
    users.username as owner_email, 
    
    users.department_name,
    users.cost_center,
    users.manager_full_name,
    users.is_active

from mapping
left join users
    on mapping.business_contact_id = users.user_id