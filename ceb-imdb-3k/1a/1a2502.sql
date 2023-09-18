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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arriflex Cameras','CAM:Bausch & Lomb Lenses','LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','LAB:Laboratoires LTC, St. Cloud, France','LAB:Movielab, USA','LAB:Technicolor S.p.a., Roma, Italy','PCS:Franscope','PCS:Spherical','PFM:70 mm','RAT:1.85 : 1'))
AND (mi2.info IN ('Australia:PG','Canada:R','Italy:VM14','New Zealand:PG','Spain:T','UK:18','UK:U','USA:GP','USA:X'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','composer','director','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
