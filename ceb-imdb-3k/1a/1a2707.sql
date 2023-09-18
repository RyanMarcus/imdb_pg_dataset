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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Kinuta Laboratories, Tokyo, Japan','MET:500 m','OFM:Live','PCS:CinemaScope','PCS:Kinescope','PCS:Panavision','PCS:Shawscope','PFM:16 mm','PFM:70 mm','PFM:Video','RAT:1.33 : 1','RAT:1.37 : 1','RAT:1.66 : 1','RAT:4:3'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
