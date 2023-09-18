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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('1','11','116','15','22','62','64','74','9','97','France:85','USA:26','USA:74','USA:98'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','LAB:Technicolor, USA','MET:','OFM:Live','OFM:Video','PCS:Kinescope','PCS:Spherical','PFM:70 mm','RAT:1.20 : 1','RAT:1.37 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('costume designer','director','editor','guest','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
