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
AND (mi1.info IN ('106','11','12','45','61','62','8','80','81','85','89','94','95','97','USA:18'))
AND (mi2.info IN ('Czech','Dutch','Finnish','German','Greek','Hindi','Italian','Korean','Mandarin','None','Polish','Russian','Spanish','Swedish','Turkish'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer','miscellaneous crew','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
