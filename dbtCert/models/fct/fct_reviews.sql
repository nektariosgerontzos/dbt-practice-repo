{{
  config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    )
}}
WITH fact AS (
    SELECT *
    FROM {{ ref('src_reviews')}}
)
SELECT *
FROM fact
WHERE review_texts IS NOT NULL
{% if is_incremental() %}
  and review_date > (SELECT max(review_date) FROM {{this}})
{% endif %}


