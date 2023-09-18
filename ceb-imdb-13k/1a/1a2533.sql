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
AND (it1.id in ('5'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:16','Brazil:14','France:U','Germany:12','Norway:15','Norway:7','Portugal:M/18','UK:A','UK:U','USA:Approved'))
AND (mi2.info IN ('CAM:Panavision Lenses','LAB:DeLuxe','LAB:Technicolor, Hollywood (CA), USA','LAB:Technicolor, USA','OFM:16 mm','PCS:CinemaScope','PCS:Techniscope','PCS:VistaVision','PFM:70 mm','PFM:8 mm','RAT:1.66 : 1','RAT:1.85 : 1','RAT:2.20 : 1','RAT:2.55 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
