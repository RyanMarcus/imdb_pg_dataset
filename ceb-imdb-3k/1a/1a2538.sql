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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:DeLuxe','LAB:Technicolor, USA','MET:165 m','MET:175 m','MET:190 m','MET:250 m','MET:30 m','MET:305 m','MET:45.7 m','OFM:16 mm','PCS:Spherical','PCS:Techniscope','RAT:1.33 : 1'))
AND (mi2.info IN ('Biography','Drama','Family','Fantasy','Film-Noir','Horror','Mystery','Short','Thriller'))
AND (kt.kind in ('tv series','video game'))
AND (rt.role in ('editor','guest','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
