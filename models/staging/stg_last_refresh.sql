select
    Date_Last_Refreshed as date_last_refreshed

from {{ ref('last_refresh') }}