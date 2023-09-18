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
AND (it1.id IN ('5'))
AND (it2.id IN ('22'))
AND (mi1.info IN ('Australia:M','Netherlands:12','UK:15','USA:R','USA:TV-PG'))
AND (n.name ILIKE '%groo%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actress','composer','costume designer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
