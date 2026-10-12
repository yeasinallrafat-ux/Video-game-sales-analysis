USE video_games;
 
 DROP TABLE IF EXISTS game_selling_data_raw;

 CREATE TABLE game_selling_data_raw ( 
 img VARCHAR(255),
 title VARCHAR(255),
 console VARCHAR(50), 
 genre VARCHAR(50), 
 publisher VARCHAR(255), 
 developer VARCHAR(255),
 critic_score VARCHAR(20),
 total_sales VARCHAR(20),
 na_sales VARCHAR(20), 
 jp_sales VARCHAR(20), 
 pal_sales VARCHAR(20),
 other_sales VARCHAR(20), 
 release_date VARCHAR(50),
 last_update VARCHAR(50)
 );
LOAD DATA LOCAL INFILE 'C:/Users/yeasi/Desktop/sql projects/Video game sales/vgchartz-2024.csv'
 INTO TABLE game_selling_data_raw
 FIELDS TERMINATED BY ',' 
 ENCLOSED BY '"'
 IGNORE 1 ROWS;

 DESCRIBE game_selling_data_raw;