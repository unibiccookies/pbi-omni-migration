select
    Breakdown_by as breakdown_name,
    Breakdown_by_Fields as breakdown_field,
    Breakdown_by_Order as sort_order

from {{ ref('breakdown_by') }}

