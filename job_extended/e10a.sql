--- top rated movies of indian actors
select min(n.name), min(t.title)
from info_type as it1,
info_type as it2,
movie_info_idx as mii,
title as t,
cast_info as ci,
name as n,
person_info as pi
WHERE it1.info ILIKE 'rating'
AND it1.id = mii.info_type_id
AND t.id = mii.movie_id
AND t.id = ci.movie_id
AND ci.person_id = n.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND it2.info ILIKE '%birth%'
AND pi.info ILIKE '%india%'
AND (mii.info ILIKE '8%' OR mii.info ILIKE '9%'
  OR mii.info ILIKE '10%');

-- AND mii.info::int > 1000;
-- order by mii.info::int desc LIMIT 100;
