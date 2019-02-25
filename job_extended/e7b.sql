SELECT MIN(cn1.name) AS first_company, MIN(cn2.name) AS second_company, MIN(mi_idx1.info) AS first_rating, MIN(mi_idx2.info) AS second_rating, MIN(t1.title) AS first_movie, MIN(t2.title) AS second_movie 
FROM aka_title at1, aka_title at2,company_name cn1, company_name cn2, info_type it1, info_type it2,  movie_companies mc1, movie_companies mc2, movie_info_idx mi_idx1, movie_info_idx mi_idx2, movie_link  ml, title t1, title t2 
WHERE it1.info  = 'rating' AND it2.info  = 'rating' AND  mi_idx2.info  < '3.0' 
AND at1.kind_id = t1.kind_id AND at2.kind_id = t2.kind_id AND t1.id = ml.movie_id AND t2.id = ml.linked_movie_id AND it1.id = mi_idx1.info_type_id AND t1.id = mi_idx1.movie_id 
AND cn1.id = mc1.company_id AND t1.id = mc1.movie_id AND ml.movie_id = mi_idx1.movie_id AND ml.movie_id = mc1.movie_id 
AND mi_idx1.movie_id = mc1.movie_id AND it2.id = mi_idx2.info_type_id AND t2.id = mi_idx2.movie_id AND cn2.id = mc2.company_id 
AND t2.id = mc2.movie_id AND ml.linked_movie_id = mi_idx2.movie_id AND ml.linked_movie_id = mc2.movie_id AND mi_idx2.movie_id = mc2.movie_id;
