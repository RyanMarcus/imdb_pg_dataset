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
AND (mi1.info IN ('Australia:G','Australia:M','Canada:G','Chile:TE','Dolby SR','France:-12','France:U','Germany:6','Iceland:16','Mono','New Zealand:R18','Norway:15','Norway:16','Norway:18','South Korea:All','Sweden:15','Sweden:7','Switzerland:14','Switzerland:16','USA:Not Rated'))
AND (n.name ILIKE '%eil%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','miscellaneous crew','producer','production designer'))
GROUP BY mi1.info, n.name
