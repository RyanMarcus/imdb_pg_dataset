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
AND (it1.id IN ('5'))
AND (mi1.info IN ('Argentina:16','Australia:G','Australia:MA','Canada:G','Finland:K-15','Finland:S','Germany:16','Germany:18','Iceland:12','Iceland:16','Netherlands:16','Philippines:PG-13','Singapore:M18','South Korea:18','Sweden:15','UK:PG','UK:U','USA:Approved','USA:PG','USA:Passed'))
AND (n.name ILIKE '%tyle%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','producer','production designer'))
GROUP BY mi1.info, n.name
