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
AND (mi1.info IN ('MET:','MET:200 m','OFM:Live','PCS:CinemaScope','PCS:Dyaliscope','PCS:Tohoscope','PFM:70 mm','PFM:Video','RAT:1.37 : 1','RAT:1.66 : 1','RAT:1.85 : 1','RAT:2.20 : 1','RAT:4:3'))
AND (mi2.info IN ('Argentina','Belgium','Brazil','Canada','Denmark','East Germany','Hong Kong','Portugal','Sweden','Taiwan','USA'))
AND (kt.kind in ('episode','tv movie'))
AND (rt.role in ('director','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
