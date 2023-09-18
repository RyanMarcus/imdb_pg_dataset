SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('2','5'))
AND (mi1.info IN ('Australia:R','Brazil:Livre','Canada:18A','Chile:14','Finland:K-8','Germany:o.Al.','Italy:VM14','Malaysia:U','Netherlands:14','Netherlands:6','Norway:18','Philippines:R-13','Philippines:R-18','Portugal:M/6','UK:12','West Germany:6'))
AND (n.name ILIKE '%bes%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('editor','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
