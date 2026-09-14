/* 
  --PROBLEM--
  Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page"). Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
  --EXPLANATION--
  This SQL query retrieves the IDs of Facebook pages that have no likes. It performs a LEFT JOIN between the pages table and the page_likes table, matching on the page_id. The WHERE clause filters for pages that do not have any corresponding entries in the page_likes table (i.e., pages with zero likes). Finally, the results are sorted in ascending order by page_id.
*/

SELECT 
  pages.page_id
FROM pages
LEFT JOIN page_likes AS likes
  ON pages.page_id = likes.page_id
WHERE likes.id IS NULL
ORDER BY pages.page_id;