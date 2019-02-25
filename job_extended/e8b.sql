select count(*)
from title as t, movie_keyword as mk, keyword as k, info_type as it, movie_info as mi
where it.id = 3 AND it.id = mi.info_type_id AND mi.movie_id = t.id AND
mk.keyword_id = k.id AND mk.movie_id = t.id
AND k.keyword ILIKE '%fight%'
AND mi.info ILIKE '%action%';
