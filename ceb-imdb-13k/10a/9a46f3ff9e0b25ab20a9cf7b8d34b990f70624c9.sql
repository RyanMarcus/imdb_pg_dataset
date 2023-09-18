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
AND (it1.id IN ('3','5','6'))
AND (mi1.info IN ('Australia:G','Dolby SR','Finland:K-12','New Zealand:M','Portugal:M/6','South Korea:12','Spain:18','UK:U','USA:Unrated','West Germany:12'))
AND (n.name ILIKE '%katz%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('editor','miscellaneous crew','producer','production designer'))
GROUP BY mi1.info, n.name
