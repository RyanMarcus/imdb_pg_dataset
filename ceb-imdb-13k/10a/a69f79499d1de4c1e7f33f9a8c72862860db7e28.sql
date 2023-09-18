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
AND (mi1.info IN ('Brazil:18','Chile:18','Chile:Y7','Iceland:LH','Ireland:18','Malaysia:(Banned)','Netherlands:MG6','New Zealand:PG','Sweden:(Banned)','Switzerland:0','Taiwan:PG-12','USA:TV-Y7','West Germany:6'))
AND (n.name ILIKE '%ass%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('editor','producer','production designer'))
GROUP BY mi1.info, n.name
