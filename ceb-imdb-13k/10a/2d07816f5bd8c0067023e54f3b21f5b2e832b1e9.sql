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
AND (it1.id IN ('2','5','8'))
AND (mi1.info IN ('Canada:14A','Finland:K-15','France:U','Iceland:16','Malaysia:U','Netherlands:6','Norway:15','Peru:14','Philippines:PG-13','Portugal:M/12','Portugal:M/16','South Korea:12','South Korea:15','Spain:18','Switzerland:12','UK:12','USA','USA:TV-14','USA:TV-PG'))
AND (n.name ILIKE '%carter%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','miscellaneous crew','producer','production designer'))
GROUP BY mi1.info, n.name
