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
AND (mi1.info IN ('Australia:MA15+','Brazil:12','Finland:K-13','Iceland:14','Italy:VM14','Japan:G','Netherlands:12','Netherlands:6','Norway:11','Philippines:PG-13','Philippines:R-13','Singapore:PG13','South Korea:12','South Korea:15','Sweden:Btl','UK:X','USA:TV-MA'))
AND (n.name ILIKE '%ren%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('actress','costume designer','director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
