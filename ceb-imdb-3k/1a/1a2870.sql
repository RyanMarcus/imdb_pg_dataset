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
AND (it1.id in ('6'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','AGA Sound System','Chronophone','Cinephone','Dolby Digital','Mono','Perspecta Stereo'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','MET:15.2 m','MET:15.24 m','MET:150 m','MET:200 m','MET:30 m','MET:600 m','PCS:Panavision','PFM:16 mm','RAT:1.33 : 1'))
AND (kt.kind in ('episode','tv movie','video game','video movie'))
AND (rt.role in ('costume designer','editor','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
