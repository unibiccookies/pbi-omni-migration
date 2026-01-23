select
    `key` as unique_key,  
    purchaseAccountID as purchase_account_id, 
    purchaseAccountName as purchase_account_name,
    purchaseTicketID as purchase_ticket_id,
    Asset_Link as asset_link,
    name as name,

    Cloud as cloud_provider,
    payerGroup as payer_group, 
    purchaseType as purchase_type,
    region as region,
    reservationType as reservation_type,
    scope as scope,
    status as status,
    Family as family,

    DateLoaded as date_loaded,
    startDate as start_date,
    endDate as end_date,
    Renewal_Date as renewal_date,
    RenewalTimePeriod_CSP as renewal_time_period,

    annualCost as annual_cost,
    hourlyCommit as hourly_commit,
    instanceCount as instance_count,
    purchaseCost as purchase_cost,
    purchaseExpectedSaving as purchase_expected_saving,

    `discount%` as discount_percent, 
    `newTotalProductCoverage%` as new_total_product_coverage_percent,
    `purchaseCoverageIncrease%` as purchase_coverage_increase_percent

from {{ ref('ri_csp') }}