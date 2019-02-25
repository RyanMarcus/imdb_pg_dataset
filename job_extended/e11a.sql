--- actors from a bunch of european countries in french movies
select count(*)
from info_type as it1,
info_type as it2,
title as t,
movie_info as mi,
cast_info as ci,
name as n,
person_info as pi
WHERE t.id = ci.movie_id
AND ci.person_id = n.id
AND n.id = pi.person_id
AND it2.info ILIKE '%birth%'
AND pi.info_type_id = it2.id
AND (pi.info ILIKE '%uk%'
  OR pi.info ILIKE '%spain%'
  OR pi.info ILIKE '%germany%'
  OR pi.info ILIKE '%italy%'
  OR pi.info ILIKE '%croatia%'
  OR pi.info ILIKE '%algeria%'
  OR pi.info ILIKE '%south%'
  OR pi.info ILIKE '%austria%'
  OR pi.info ILIKE '%hungary%'
)
AND it1.info ILIKE '%count%'
AND mi.info_type_id = it1.id
AND t.id = mi.movie_id
AND mi.info ILIKE '%france%';
