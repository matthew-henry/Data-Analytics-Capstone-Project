SELECT * 
FROM default.openaq_jsonfix 
WHERE country='US' AND (date.utc BETWEEN '2021-12-31' AND '2023-01-01')