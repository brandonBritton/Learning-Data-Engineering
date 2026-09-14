/* 
  --PROBLEM--
  Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket. In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
  --EXPLANATION--
  This query generates a histogram of the number of tweets per user since January 1, 2022.
  It counts the number of users who have tweeted a certain number of times and groups them into buckets.
*/

WITH tweets_per_user AS (
  SELECT
    user_id,
    COUNT(tweet_id) AS tweet_count
  FROM tweets
  WHERE tweet_date >= '2022-01-01'
  AND tweet_date < '2023-01-01'
  GROUP BY user_id
)

SELECT
  tweet_count AS tweet_bucket,
  COUNT(user_id) AS users_num
FROM tweets_per_user
GROUP BY tweet_count    
ORDER BY tweet_bucket;