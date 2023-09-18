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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Technicolor, USA','MET:120 m','MET:160 m','MET:20 m','MET:290 m','MET:30 m','MET:900 m','OFM:68 mm','OFM:Video','PCS:Spherical','PFM:16 mm','RAT:1.33 : 1','RAT:2.20 : 1'))
AND (mi2.info IN ('Argentina','Australia','Austria','Brazil','Bulgaria','Spain','Sweden','Switzerland','Turkey'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','costume designer','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
