with src_hosts as (
    select * from {{ ref('src_hosts') }}
)
select
created_at,
host_id,
is_superhost,
NVL(host_name, 'Anonymous') as host_name,
updated_at
from src_hosts