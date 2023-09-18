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
AND (it1.id in ('1'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('142','180','69','79','Argentina:105','France:7','Germany:30','Germany:89','Germany:96','Mexico:90','USA:30','USA:56','USA:63','USA:67'))
AND (mi2.info IN ('Action','Adult','Adventure','Biography','Crime','Documentary','Game-Show','Horror','Mystery','Talk-Show','Western'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('cinematographer','composer','costume designer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
