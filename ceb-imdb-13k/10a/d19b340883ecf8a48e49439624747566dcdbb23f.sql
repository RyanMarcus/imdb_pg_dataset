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
AND (it1.id IN ('5','8'))
AND (mi1.info IN ('Australia:MA','Brazil:12','Canada:14A','Canada:18A','Canada:G','Germany:6','Hong Kong:IIB','Netherlands:6','Netherlands:AL','Norway:18','Sweden:Btl','Switzerland:10','UK:15','USA:PG-13','West Germany:12'))
AND (n.name ILIKE '%jr.%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','costume designer'))
GROUP BY mi1.info, n.name
