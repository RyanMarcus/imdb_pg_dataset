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
AND (mi1.info IN ('CAM:Panaflex Camera and Lenses by Panavision','CAM:Panavision Cameras and Lenses','LAB:Fotofilm S.A., Madrid, Spain','LAB:Metrocolor, Culver City (CA), USA','LAB:Metrocolor, USA','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor','RAT:1.85 : 1','RAT:2.00 : 1'))
AND (mi2.info IN ('Belgium:KT','Canada:A','Germany:12','Iceland:14','Ireland:15','Italy:VM18','South Korea:All','UK:15','USA:M'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('cinematographer','editor','production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
