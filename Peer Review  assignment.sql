Peer review assignment Answers

"Part 1: Yelp Dataset Profiling and Understanding"

"1. 1. Profile the data by finding the total number of records for each of the tables"
__SQL code  

SELECT 
  'Attribute' AS table_name, COUNT(*) AS total_records
FROM 
  Attribute
UNION ALL
SELECT 
  'Business' AS table_name, COUNT(*) AS total_records
FROM 
  Business
UNION ALL
SELECT 
  'Category' AS table_name, COUNT(*) AS total_records
FROM 
  Category
UNION ALL
SELECT 
  'Checkin' AS table_name, COUNT(*) AS total_records
FROM 
  Checkin
UNION ALL
SELECT 
  'Elite_years' AS table_name, COUNT(*) AS total_records
FROM 
  Elite_years
UNION ALL
SELECT 
  'Friend' AS table_name, COUNT(*) AS total_records
FROM 
  Friend
UNION ALL
SELECT 
  'Hours' AS table_name, COUNT(*) AS total_records
FROM 
  Hours
UNION ALL
SELECT 
  'Photo' AS table_name, COUNT(*) AS total_records
FROM 
  Photo
UNION ALL
SELECT 
  'Review' AS table_name, COUNT(*) AS total_records
FROM 
  Review
UNION ALL
SELECT 
  'Tip' AS table_name, COUNT(*) AS total_records
FROM 
  Tip
UNION ALL
SELECT 
  'User' AS table_name, COUNT(*) AS total_records
FROM 
  User

Answers 
+-------------+---------------+
| table_name  | total_records |
+-------------+---------------+
| Attribute   |         10000 |
| Business    |         10000 |
| Category    |         10000 |
| Checkin     |         10000 |
| Elite_years |         10000 |
| Friend      |         10000 |
| Hours       |         10000 |
| Photo       |         10000 |
| Review      |         10000 |
| Tip         |         10000 |
| User        |         10000 |
+-------------+---------------+


"2. Find the total distinct records by either the foreign key or primary key for each table."

__SQL code 

SELECT
    'business' AS table_name,
    'id' AS column_name,
    COUNT(DISTINCT id) AS num_records
FROM business
UNION
SELECT
    'hours' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM hours
UNION
SELECT
    'category' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM category
UNION
SELECT
    'attribute' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM attribute
UNION
SELECT
    'review' AS table_name,
    'id' AS column_name,
    COUNT(DISTINCT id) AS num_records
FROM review
UNION
SELECT
    'review' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM review
UNION
SELECT
    'review' AS table_name,
    'user_id' AS column_name,
    COUNT(DISTINCT user_id) AS num_records
FROM review
UNION
SELECT
    'checkin' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM checkin
UNION
SELECT
    'photo' AS table_name,
    'id' AS column_name,
    COUNT(DISTINCT id) AS num_records
FROM photo
UNION
SELECT
    'photo' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM photo
UNION
SELECT
    'tip' AS table_name,
    'user_id' AS column_name,
    COUNT(DISTINCT user_id) AS num_records
FROM tip
UNION
SELECT
    'tip' AS table_name,
    'business_id' AS column_name,
    COUNT(DISTINCT business_id) AS num_records
FROM tip
UNION
SELECT
    'user' AS table_name,
    'id' AS column_name,
    COUNT(DISTINCT id) AS num_records
FROM user
UNION
SELECT
    'friend' AS table_name,
    'user_id' AS column_name,
    COUNT(DISTINCT user_id) AS num_records
FROM friend
UNION
SELECT
    'elite_years' AS table_name,
    'user_id' AS column_name,
    COUNT(DISTINCT user_id) AS num_records
FROM elite_years;

	
+-------------+-------------+-------------+
| table_name  | column_name | num_records |
+-------------+-------------+-------------+
| attribute   | business_id |        1115 |
| business    | id          |       10000 |
| category    | business_id |        2643 |
| checkin     | business_id |         493 |
| elite_years | user_id     |        2780 |
| friend      | user_id     |          11 |
| hours       | business_id |        1562 |
| photo       | business_id |        6493 |
| photo       | id          |       10000 |
| review      | business_id |        8090 |
| review      | id          |       10000 |
| review      | user_id     |        9581 |
| tip         | business_id |        3979 |
| tip         | user_id     |         537 |
| user        | id          |       10000 |
+-------------+-------------+-------------+

"3. Are there any columns with null values in the Users table? Indicate yes, or no."

__SQl code

SELECT *
FROM user
WHERE id IS NULL OR
      name IS NULL OR
      review_count IS NULL OR
      yelping_since IS NULL OR
      useful IS NULL OR
      cool IS NULL OR
      fans IS NULL OR
      average_stars IS NULL OR
      compliment_hot IS NULL OR
      compliment_more IS NULL OR
      compliment_profile IS NULL OR
      compliment_cute IS NULL OR
      compliment_list IS NULL OR
      compliment_note IS NULL OR
      compliment_plain IS NULL OR
      compliment_cool IS NULL OR
      compliment_funny IS NULL OR
      compliment_writer IS NULL OR
      compliment_photos IS NULL
	  
+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
| id | name | review_count | yelping_since | useful | funny | cool | fans | average_stars | compliment_hot | compliment_more | compliment_profile | compliment_cute | compliment_list | compliment_note | compliment_plain | compliment_cool | compliment_funny | compliment_writer | compliment_photos |
+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
+----+------+--------------+---------------+--------+-------+------+------+---------------+----------------+-----------------+--------------------+-----------------+-----------------+-----------------+------------------+-----------------+------------------+-------------------+-------------------+
(Zero rows)	  
 
" Answer = no"
 
 "4. For each table and column listed below, display the smallest (minimum), largest (maximum), and average (mean) value for the following fields:"
 
__SQL code 

SELECT
    'Review' AS table_name,
    MIN(stars) AS min_stars,
    MAX(stars) AS max_stars,
    AVG(stars) AS avg_stars
FROM review
UNION
SELECT
    'Business' AS table_name,
    MIN(stars) AS min_stars,
    MAX(stars) AS max_stars,
    AVG(stars) AS avg_stars
FROM business
UNION
SELECT
    'Tip' AS table_name,
    MIN(likes) AS min_likes,
    MAX(likes) AS max_likes,
    AVG(likes) AS avg_likes
FROM tip
UNION
SELECT
    'Checkin' AS table_name,
    MIN(count) AS min_count,
    MAX(count) AS max_count,
    AVG(count) AS avg_count
FROM checkin
UNION
SELECT
    'User' AS table_name,
    MIN(review_count) AS min_review_count,
    MAX(review_count) AS max_review_count,
    AVG(review_count) AS avg_review_count
FROM user;

+------------+-----------+-----------+-----------+
| table_name | min_stars | max_stars | avg_stars |
+------------+-----------+-----------+-----------+
| Business   |       1.0 |       5.0 |    3.6549 |
| Checkin    |         1 |        53 |    1.9414 |
| Review     |         1 |         5 |    3.7082 |
| Tip        |         0 |         2 |    0.0144 |
| User       |         0 |      2000 |   24.2995 |
+------------+-----------+-----------+-----------+

"5. List the cities with the most reviews in descending order:"
__SQL code 

SELECT 
    city, 
    sum(review_count) AS most_reviews
FROM business
GROUP BY city
ORDER BY most_reviews DESC

+-----------------+--------------+
| city            | most_reviews |
+-----------------+--------------+
| Las Vegas       |        82854 |
| Phoenix         |        34503 |
| Toronto         |        24113 |
| Scottsdale      |        20614 |
| Charlotte       |        12523 |
| Henderson       |        10871 |
| Tempe           |        10504 |
| Pittsburgh      |         9798 |
| Montréal        |         9448 |
| Chandler        |         8112 |
| Mesa            |         6875 |
| Gilbert         |         6380 |
| Cleveland       |         5593 |
| Madison         |         5265 |
| Glendale        |         4406 |
| Mississauga     |         3814 |
| Edinburgh       |         2792 |
| Peoria          |         2624 |
| North Las Vegas |         2438 |
| Markham         |         2352 |
| Champaign       |         2029 |
| Stuttgart       |         1849 |
| Surprise        |         1520 |
| Lakewood        |         1465 |
| Goodyear        |         1155 |
+-----------------+--------------+
(Output limit exceeded, 25 of 362 total rows shown)

"6. Find the distribution of star ratings to the business in the following cities:"
"i. Avon"

__SQL code

SELECT 
    stars, 
    sum(review_count) AS buinesses_with_stars_rating
FROM business
WHERE city = "Avon"
GROUP BY stars 
+-------+-----------------------------+
| stars | buinesses_with_stars_rating |
+-------+-----------------------------+
|   1.5 |                          10 |
|   2.5 |                           6 |
|   3.5 |                          88 |
|   4.0 |                          21 |
|   4.5 |                          31 |
|   5.0 |                           3 |
+-------+-----------------------------+

"ii. Beachwood"
__SQL code

SELECT 
    stars, 
    sum(review_count) AS buinesses_with_stars_rating
FROM business
WHERE city = "Beachwood"
GROUP BY stars 

+-------+-----------------------------+
| stars | buinesses_with_stars_rating |
+-------+-----------------------------+
|   2.0 |                           8 |
|   2.5 |                           3 |
|   3.0 |                          11 |
|   3.5 |                           6 |
|   4.0 |                          69 |
|   4.5 |                          17 |
|   5.0 |                          23 |
+-------+-----------------------------+

"7. Find the top 3 users based on their total number of reviews:"
__SQL code

SELECT 
    name, 
    sum(review_count) AS number_of_reviews
FROM user
GROUP BY id
ORDER BY number_of_reviews DESC
LIMIT 3

+--------+-------------------+
| name   | number_of_reviews |
+--------+-------------------+
| Gerald |              2000 |
| Sara   |              1629 |
| Yuri   |              1339 |
+--------+-------------------+

"8. Does posing more reviews correlate with more fans?"
__SQL code

SELECT 
    name, 
    sum(review_count) AS total_reviews, 
    fans, 
    sum(review_count)/fans AS average_review_per_fan
FROM user
GROUP BY id
ORDER BY total_reviews DESC

+-----------+---------------+------+------------------------+
| name      | total_reviews | fans | average_review_per_fan |
+-----------+---------------+------+------------------------+
| Gerald    |          2000 |  253 |                      7 |
| Sara      |          1629 |   50 |                     32 |
| Yuri      |          1339 |   76 |                     17 |
| .Hon      |          1246 |  101 |                     12 |
| William   |          1215 |  126 |                      9 |
| Harald    |          1153 |  311 |                      3 |
| eric      |          1116 |   16 |                     69 |
| Roanna    |          1039 |  104 |                      9 |
| Mimi      |           968 |  497 |                      1 |
| Christine |           930 |  173 |                      5 |
| Ed        |           904 |   38 |                     23 |
| Nicole    |           864 |   43 |                     20 |
| Fran      |           862 |  124 |                      6 |
| Mark      |           861 |  115 |                      7 |
| Christina |           842 |   85 |                      9 |
| Dominic   |           836 |   37 |                     22 |
| Lissa     |           834 |  120 |                      6 |
| Lisa      |           813 |  159 |                      5 |
| Alison    |           775 |   61 |                     12 |
| Sui       |           754 |   78 |                      9 |
| Tim       |           702 |   35 |                     20 |
| L         |           696 |   10 |                     69 |
| Angela    |           694 |  101 |                      6 |
| Crissy    |           676 |   25 |                     27 |
| Lyn       |           675 |   45 |                     15 |
+-----------+---------------+------+------------------------+
(Output limit exceeded, 25 of 10000 total rows shown)

"Answer: No, Mimi who has the most fans only has less than half reviews (1 review per fan) that Gerald has the most reviews.

9. Are there more reviews with the word "love" or with the word "hate" in them?"

__SQL code

SELECT  
    feelings, 
    count(*) AS total_count
FROM (SELECT 
      CASE  WHEN text LIKE "%love%" THEN "love"
            WHEN text LIKE "%hate%" THEN "hate"
            ELSE "Others"
            END feelings
      FROM review)
GROUP BY feelings
ORDER BY total_count DESC

+----------+-------------+
| feelings | total_count |
+----------+-------------+
| Others   |        8042 |
| love     |        1780 |
| hate     |         178 |
+----------+-------------+
There are more reviews with the word “love”

"10. Find the top 10 users with the most fans:"
__SQL code

SELECT 
    name, 
    sum(fans) AS most_fans
FROM user
GROUP BY id
ORDER BY most_fans DESC
LIMIT 10

+-----------+-----------+
| name      | most_fans |
+-----------+-----------+
| Amy       |       503 |
| Mimi      |       497 |
| Harald    |       311 |
| Gerald    |       253 |
| Christine |       173 |
| Lisa      |       159 |
| Cat       |       133 |
| William   |       126 |
| Fran      |       124 |
| Lissa     |       120 |
+-----------+-----------+

"Part 2: Inferences and Analysis

1. Pick one city and category of your choice and group the businesses in that city or category by their overall star rating. 
Compare the businesses with 2-3 stars to the businesses with 4-5 stars and answer the following questions. Include your code."

"I choose Vegas as it has the highest reviewa  and shopping as category"

"i. Do the two groups you chose to analyze have a different distribution of hours?"

__SQL code

SELECT  CASE WHEN stars >= 4 THEN "4-5 stars"
             WHEN stars >= 2 THEN "2-3 stars"
             ELSE "below 2"
             END star_rank,
        city, 
        c.category,
        count(distinct business.id) AS business_count,
        count(h.hours) AS working_hours
FROM business
JOIN hours h ON business.id = h.business_id
JOIN category c ON business.id = c.business_id
WHERE city = "Las Vegas" AND c.category = "Shopping"

GROUP BY star_rank

+-----------+-----------+----------+----------------+---------------+
| star_rank | city      | category | business_count | working_hours |
+-----------+-----------+----------+----------------+---------------+
| 2-3 stars | Las Vegas | Shopping |              2 |            13 |
| 4-5 stars | Las Vegas | Shopping |              2 |            12 |
+-----------+-----------+----------+----------------+---------------+

"Answer: Yes though the difference in working  hours is small 13 vs 12"

 "ii. Do the two groups you chose to analyze have a different number of reviews?"

 __SQL code
 
SELECT  CASE WHEN stars >= 4 THEN "4-5 stars"
             WHEN stars >= 2 THEN "2-3 stars"
             ELSE "below 2"
             END star_rank,
        city, 
        c.category,
        count(distinct business.id) AS business_count,
        sum(review_count) AS total_reviews
FROM business
JOIN category c ON business.id = c.business_id
WHERE city = "Las Vegas" AND c.category = "Shopping"
GROUP BY star_rank

+-----------+-----------+----------+----------------+--------------+
| star_rank | city      | category | business_count | total_reviews |
+-----------+-----------+----------+----------------+--------------+
| 2-3 stars | Las Vegas | Shopping |              2 |           17 |
| 4-5 stars | Las Vegas | Shopping |              2 |           36 |

Answer: Yes 4-5 starts have double the number of reviews for 2-3 star businesses.

"iii. Are you able to infer anything from the location data provided between these two groups? Explain."

__SQL code

SELECT  CASE WHEN stars >= 4 THEN "4-5 stars"
             WHEN stars >= 2 THEN "2-3 stars"
             ELSE "below 2"
             END star_rank,
        address,
        neighborhood,
        city, 
        postal_code
FROM business
JOIN category c ON business.id = c.business_id
WHERE city = "Las Vegas" AND c.category = "Shopping"
ORDER BY star_rank

+-----------+-----------------------------+--------------+-----------+-------------+
| star_rank | address                     | neighborhood | city      | postal_code |
+-----------+-----------------------------+--------------+-----------+-------------+
| 2-3 stars | 3421 E Tropicana Ave, Ste I | Southeast    | Las Vegas | 89121       |
| 2-3 stars | 3808 E Tropicana Ave        | Eastside     | Las Vegas | 89121       |
| 4-5 stars | 1000 Scenic Loop Dr         |              | Las Vegas | 89161       |
| 4-5 stars | 3555 W Reno Ave, Ste F      |              | Las Vegas | 89118       |
+-----------+-----------------------------+--------------+-----------+-------------+

"Answer: Businesses with 2-3 stars are in the same areas as per the postal code 
which is in Eastern part of the city. Businesses with 4-5 stars are in a different area. 

2. Group business based on the ones that are open and the ones that are closed. 
What differences can you find between the ones that are still open and the ones that are closed? 
List at least two differences and the SQL code you used to arrive at your answer."


__SQL code 

SELECT  CASE    WHEN is_open = 1 THEN "OPEN"
                WHEN is_open = 0 THEN "CLOSED"
                END status, 
        count(distinct id) AS num_businesses,
        sum(review_count) AS total_reviews,
        round(avg(review_count),2) AS average_review,
        round(avg(stars),2) AS average_stars
FROM business
GROUP BY is_open
ORDER BY status DESC

Answer: 
"Difference A: There are 7 times more businesses that are open than closed.
Difference B: Open and closed businesses do not have much difference interms of average stars, 
this could mean that they were not closed due to poor rating but other reasons."

"3. For this last part of your analysis, you are going to choose the type of analysis you want to conduct on the Yelp dataset and are going to prepare the data for analysis."


"i. Indicate the type of analysis you chose to do:"

"The analysis is to find out what are the most successful businesses based on the business category."

" Answer: I choose to analyse preference among different types of cuisines (food) on yelp"
 
 
 "ii. Write 1-2 brief paragraphs on the type of data you will need for your analysis and why you chose that data:"
 "To conduct this analysis, I will require specific data from the business and category tables, 
 including id, stars, and review count from the former, and category. 
 My analysis will involve determining the count of businesses in each category, as well as calculating 
 the average star rating and total reviews received by each business to gauge their performance. I choose this category  as its a favourite business category within the yelp dataset"
 
" iii. Output of your finished dataset:"
 +----------+--------------------+---------------+----------------------+-----------+
| category | Num_Of_Restaurants | Average_Stars | Average_Review_Count | city      |
+----------+--------------------+---------------+----------------------+-----------+
| Korean   |                  7 |           4.5 |                  8.0 | Toronto   |
| French   |                 12 |           4.0 |               135.08 | Las Vegas |
| Chinese  |                 13 |          3.77 |               423.23 | Las Vegas |
| Mexican  |                 28 |          3.63 |                 73.0 | Edinburgh |
| Italian  |                 13 |          3.54 |                78.23 | Montréal  |
| Indian   |                  6 |           3.5 |                 32.0 | Aurora    |
| Japanese |                 20 |          3.48 |                22.85 | Toronto   |
+----------+--------------------+---------------+----------------------+-----------+
 
 "iv. Provide the SQL code you used to create your final dataset:"
 
 SELECT 
  c.category, 
  COUNT(b.name) AS Num_Of_Restaurants, 
  ROUND(AVG(stars), 2) AS Average_Stars, 
  ROUND(AVG(review_count) ,2) AS Average_Review_Count, 
  b.city 
FROM 
  business b 
  INNER JOIN hours h ON b.id = h.business_id 
  INNER JOIN category c ON c.business_id = b.id 
WHERE 
  c.category IN ("Chinese", "Mexican", "French", "Italian", "Korean", "Japanese", "Indian") 
GROUP BY 
  c.category 
ORDER BY 
  Average_Stars DESC;