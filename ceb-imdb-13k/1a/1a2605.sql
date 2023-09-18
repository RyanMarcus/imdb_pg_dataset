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
AND (it1.id in ('4'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bulgarian','Cantonese','Dutch','Finnish','French','German','Hebrew','Hindi','Latin','Persian','Portuguese','Serbo-Croatian','Spanish','Swedish'))
AND (mi2.info IN ('LAB:DeLuxe','LAB:Technicolor','LAB:Technicolor, USA','MET:300 m','MET:600 m','OFM:16 mm','PCS:CinemaScope','PCS:Tohoscope','PFM:16 mm','RAT:1.20 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('costume designer','editor','producer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
