SELECT * FROM video_games.game_selling_data;
-- Which titles sold the most world wide?
SELECT
	title,
    SUM(CAST(total_sales AS DECIMAL(10,2))) AS
    total_global_sales
    FROM game_selling_data_raw
    WHERE total_sales IS NOT NULL
    AND total_sales NOT IN ('N/A', '', '0') 
    GROUP BY title
    ORDER BY total_global_sales DESC
    LIMIT 10;
    
    
-- Which year had the highest sales?
 USE video_games; 
 SELECT
	CAST(LEFT(REPLACE(TRIM(release_date), '\r', ''), 4)
    AS UNSIGNED) AS release_year,
		SUM(CAST(NULLIF(NULLIF(total_sales, 'N/A'), '') 
        AS DECIMAL(10,2))) 
        AS total_yearly_sales,
        COUNT(*) AS total_games_released
        FROM game_selling_data_raw
        WHERE total_sales IS NOT NULL
        AND total_sales NOT IN ('N/A', '', '0')
        AND release_date IS NOT NULL
        AND release_date NOT IN ('N/A', '') 
         GROUP BY release_year
         ORDER BY total_yearly_sales
         DESC LIMIT 5;
-- What are the top 10 titles which are popular in one region but flop in another?


USE video_games;

SELECT title, console, na_sales, jp_sales, pal_sales
FROM game_selling_data_raw
WHERE
(
    CAST(NULLIF(NULLIF(na_sales, 'N/A'), '') AS DECIMAL(10,2)) >= 1
    AND CAST(NULLIF(NULLIF(jp_sales, 'N/A'), '') AS DECIMAL(10,2)) < 0.1
)
OR
(
    CAST(NULLIF(NULLIF(jp_sales, 'N/A'), '') AS DECIMAL(10,2)) >= 1
    AND CAST(NULLIF(NULLIF(na_sales, 'N/A'), '') AS DECIMAL(10,2)) < 0.1
)
ORDER BY title
  DESC LIMIT 10;

 
 
