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
AND (mi1.info IN ('LAB:Film Center, Mumbai, India','MET:200 m','MET:520 m','OFM:Live','OFM:Video','PCS:(anamorphic)','PCS:CinemaScope','PCS:Dyaliscope','PCS:Totalscope','PFM:8 mm','RAT:1.20 : 1','RAT:1.37 : 1','RAT:2.35 : 1','RAT:2.55 : 1'))
AND (mi2.info IN ('Adult','Biography','Crime','Family','Horror','Music','Musical','Sci-Fi','War'))
AND (kt.kind in ('episode','tv movie','video game','video movie'))
AND (rt.role in ('costume designer','miscellaneous crew','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
