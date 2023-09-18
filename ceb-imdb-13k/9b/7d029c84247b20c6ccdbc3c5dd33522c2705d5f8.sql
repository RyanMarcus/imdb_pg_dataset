SELECT mi1.info, n.name, COUNT(*)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n,
info_type as it2,
person_info as pi
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('2','4','5'))
AND (it2.id IN ('26'))
AND (mi1.info IN ('Canada:F','Czech Republic:12','Finland:K-8','France:12','Greece:K-13','Iceland:7','Malayalam','Mandarin','Norwegian','South Africa:10M','UK:X','USA:Approved','USA:TV-PG','West Germany:18'))
AND (n.name ILIKE '%mat%')
AND (kt.kind IN ('movie','tv series'))
AND (rt.role IN ('actress','director','miscellaneous crew'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
