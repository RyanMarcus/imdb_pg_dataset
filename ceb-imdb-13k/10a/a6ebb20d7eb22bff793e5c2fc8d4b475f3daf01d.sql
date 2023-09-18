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
AND (it1.id IN ('5','6'))
AND (mi1.info IN ('Brazil:14','Canada:18A','Finland:S','Germany:16','Germany:6','Netherlands:6','Norway:15','Philippines:PG-13','Portugal:M/6','UK:PG','USA:R'))
AND (n.name ILIKE '%gol%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('composer','editor','production designer'))
GROUP BY mi1.info, n.name
