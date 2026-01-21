select
    Agreementkey as agreement_key,
    BusinessContactID as business_contact_id,

    Agreement as agreement_name,
    Business_Contacat_Name as business_contact_name, 
    trim("TargetBUs") as target_bus,
    TargetProducts as target_products

from {{ ref('mapping') }}