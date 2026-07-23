SELECT COUNT(*) AS order_count, u.country 
  FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
    JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
      ON o.user_id = u.id
  GROUP BY country
  ORDER BY order_count DESC