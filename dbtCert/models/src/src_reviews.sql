WITH dataset AS (
    SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)
SELECT 
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_texts,
    sentiment AS review_sentiment
FROM dataset




