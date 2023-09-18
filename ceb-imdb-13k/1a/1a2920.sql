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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Bausch & Lomb Lenses','CAM:Panavision Cameras and Lenses','CAM:Panavision Lenses','LAB:DeLuxe, USA','LAB:Laboratoires Éclair, Paris, France','LAB:Universal Studios Laboratory, USA','MET:135 m','OFM:35 mm','PCS:Shawscope','PCS:Ultrascope','RAT:1.37 : 1','RAT:2.00 : 1'))
AND (mi2.info IN ('France:1911','France:1912','France:1913','USA:1903','USA:1904','USA:1955','USA:1960','USA:July 1901','USA:May 1902'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actress','composer','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
