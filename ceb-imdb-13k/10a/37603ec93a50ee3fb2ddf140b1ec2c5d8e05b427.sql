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
AND (mi1.info IN ('Argentina:13','Australia:MA','Brazil:12','Chile:TE','France:-12','Germany:12','Germany:18','Hong Kong:IIA','Iceland:16','Malaysia:U','Philippines:R-18','Singapore:M18','South Korea:All','Sweden:15','Switzerland:12','UK:15','UK:PG','USA:PG-13','USA:TV-14','West Germany:12'))
AND (n.name ILIKE '%tony%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('composer','editor','production designer'))
GROUP BY mi1.info, n.name
