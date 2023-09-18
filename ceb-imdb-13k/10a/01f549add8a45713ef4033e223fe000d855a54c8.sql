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
AND (it1.id IN ('4','5'))
AND (mi1.info IN ('Australia:G','Finland:S','Germany:6','Hong Kong:IIA','Italian','Malaysia:U','Norway:15','Philippines:PG-13','Russian','South Korea:18','Spain:13','Spain:18','Sweden:Btl','UK:12A','UK:U','USA:Not Rated','USA:Passed','USA:Unrated'))
AND (n.name ILIKE '%leve%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','costume designer'))
GROUP BY mi1.info, n.name
