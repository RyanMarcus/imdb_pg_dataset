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
AND (it1.id IN ('4','5'))
AND (it2.id IN ('15'))
AND (mi1.info IN ('Australia:X','Catalan','Chile:(Banned)','Croatian','Finland:K-7','Galician','Georgian','Ireland:12','Japan:R-18','Malaysia:U','Mexico:C','New Zealand:(Banned)','Oriya','Swahili','UK:E','West Germany:0'))
AND (n.name ILIKE '%er%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('actress','director','miscellaneous crew','producer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
GROUP BY mi1.info, n.name
