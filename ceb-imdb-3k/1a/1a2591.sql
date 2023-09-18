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
AND (mi1.info IN ('LAB:Technicolor','MET:100 m','MET:190 m','MET:30.48 m','MET:45.7 m','OFM:16 mm','PCS:(anamorphic)','PCS:Panavision','RAT:1.85 : 1'))
AND (mi2.info IN ('Action','Animation','Biography','Comedy','Crime','Drama','Family','Film-Noir','Horror','Romance','Sci-Fi','War','Western'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('cinematographer','composer','costume designer','production designer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
