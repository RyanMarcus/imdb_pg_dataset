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
AND (mi1.info IN ('LAB:Technicolor, Hollywood (CA), USA','MET:140 m','MET:180 m','MET:250 m','MET:305 m','MET:6000 m','OFM:16 mm','OFM:Video','PCS:SuperScope','PCS:Techniscope','RAT:1.37 : 1','RAT:1.66 : 1','RAT:1.75 : 1','RAT:2.00 : 1'))
AND (mi2.info IN ('France:1908','France:1911','France:1912','Italy:1907','USA:1956'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','director','miscellaneous crew','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
