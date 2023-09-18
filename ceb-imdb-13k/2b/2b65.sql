SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Brazil','France','Italy','Japan','Mexico','USA','West Germany'))
AND (mi2.info in ('Animation','Crime','Documentary','Drama','Music','Short'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('costume designer','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('butchering-a-reindeer','definition','diprivan','duck-blind','magisterium','norton','porn-video','reference-to-robert-stack','reference-to-the-charge-of-the-light-brigade','sitting','weapon-inspector','woman-with-glasses'))
