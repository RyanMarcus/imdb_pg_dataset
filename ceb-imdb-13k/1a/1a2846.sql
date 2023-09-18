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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('13','28','30','5','58','59','69','86','95','Argentina:30','USA:15','USA:20','USA:7'))
AND (mi2.info IN ('Czech','Dutch','English','Finnish','French','German','Greek','Hindi','Mandarin','Polish','Portuguese','Russian','Spanish','Turkish'))
AND (kt.kind in ('episode','tv series','video movie'))
AND (rt.role in ('actor','composer','costume designer','miscellaneous crew','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
