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
AND (mi1.info IN ('Adult','History','Music','Short','Western'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Technicolor','MET:','MET:200 m','MET:600 m','PCS:Spherical','PCS:Techniscope','PFM:35 mm','PFM:8 mm','RAT:1.33 : 1','RAT:1.37 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
