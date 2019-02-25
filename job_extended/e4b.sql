SELECT MIN(mi.info) AS release_date, MIN(t.title) AS modern_internet_movie 
FROM aka_title at, movie_companies mc, movie_info mi, movie_keyword mk, title t 
WHERE mi.note  like '%internet%' AND mi.info  is not NULL AND (mi.info like 'USA:% 199%' OR mi.info like 'USA:% 200%') AND t.production_year  > 2000 
AND t.id = at.movie_id AND t.id = mi.movie_id AND t.id = mk.movie_id AND t.id = mc.movie_id ;
