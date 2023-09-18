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
AND (it1.id in ('3'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Animation','Comedy','Crime','Drama','Fantasy','Film-Noir','Game-Show','Horror','Music','News','Romance','Sci-Fi','Thriller'))
AND (mi2.info IN ('LAB:DeLuxe','LAB:Technicolor, USA','MET:1500 m','MET:200 m','MET:23 m','MET:500 m','MET:600 m','OFM:Live','PFM:16 mm','RAT:1.36 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
