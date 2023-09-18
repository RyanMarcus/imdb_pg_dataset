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
AND (it1.id in ('7'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Canon XL-2','CAM:Panavision Camera and Lenses','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor, USA','PCS:HDV','PCS:Redcode RAW','PFM:16 mm','PFM:Digital','RAT:1.66 : 1'))
AND (mi2.info IN ('117','124','130','18','UK:90','USA:10','USA:100','USA:120','USA:20'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','director','miscellaneous crew','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
