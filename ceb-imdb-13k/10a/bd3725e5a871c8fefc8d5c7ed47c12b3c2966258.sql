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
AND (it1.id IN ('2','4','5'))
AND (mi1.info IN ('Argentina:X','Austria:10','Austria:6','Canada:18+','Czech Republic:12','Denmark:12','France:-18','France:16','Israel:18','Latin','Netherlands:MG6','Persian','Swahili'))
AND (n.name ILIKE '%mic%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('actress','costume designer','miscellaneous crew'))
GROUP BY mi1.info, n.name
