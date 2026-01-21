select
    UserID as user_id,
    Username as username,
    FullName as full_name,
    ManagerID as manager_id,
    ManagerUsername as manager_username,
    ManagerFullName as manager_full_name,

    DepartmentID as department_id,
    Department as department_name,
    BusinessUnitCostCenter as cost_center,
    BusinessTitle as business_title,
    ManagementRole as management_role,
    
    JobFamily as job_family,
    JobFamilyGroup as job_family_group,
    JobLevel as job_level,
    ManagerJobFamily as manager_job_family,

    Country as country,
    Location as location,
    WorkAddress as work_address,

    OrgTree as org_tree,
    OrgTreeCalculated as org_tree_calculated,
    WDSuppliedOrgTree as wd_supplied_org_tree,

    IsActive as is_active,
    IsPeopleManager as is_people_manager,
    IsSoftwareEngineerManager as is_software_engineer_manager,

    Created as created_date,
    LastModified as last_modified_date,

    Count_Contractor as contractor_count

from {{ ref('rsu_users') }}