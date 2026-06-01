SELECT 
    host_id,
    CASE
        WHEN host_name IS NULL THEN 'Anonumous'
        ELSE host_name
    END AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM {{ ref('src_hosts')}}














