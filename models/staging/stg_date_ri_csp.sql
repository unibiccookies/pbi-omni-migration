select
    -- The Date Key
    "Date" as date_day,

    -- Years & Quarters
    "Calendar_Year" as calendar_year,
    "FY_Year" as fiscal_year,
    "Quarter" as quarter,

    -- Months
    "Month_Name" as month_name,
    "Month_Number" as month_number,
    "Month_Year" as month_year,
    "Month_Year_Index" as month_year_index,
    "Month_Diff" as month_diff,

    -- Days
    "Weekday" as weekday_name,
    "Weekday_number" as weekday_number

from {{ ref('date_ri_csp') }}