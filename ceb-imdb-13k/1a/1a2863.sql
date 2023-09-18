SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('3'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Comedy','Documentary','Horror','News','Sci-Fi','Talk-Show','War'))
AND (mi2.info IN ('Argentina','Australia','Belgium','Czechoslovakia','Finland','Italy','Mexico','Norway','Philippines','Taiwan','Turkey','Yugoslavia'))
AND (kt.kind in ('episode','tv series','video game'))
AND (rt.role in ('actor','actress','guest','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
