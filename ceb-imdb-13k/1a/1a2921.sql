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
AND (mi1.info IN ('CAM:Panavision Cameras and Lenses','LAB:Laboratoires LTC, St. Cloud, France','LAB:Pathé Laboratory, USA','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor S.p.a., Roma, Italy','LAB:Technicolor, Hollywood (CA), USA','MET:300 m','OFM:65 mm','PFM:16 mm','PFM:Video','RAT:1.66 : 1','RAT:1.78 : 1'))
AND (mi2.info IN ('Argentina:13','Argentina:18','Australia:PG','Australia:R','Canada:G','Finland:K-15','Italy:VM14','Italy:VM18','Norway:16','Portugal:M/6','UK:18','West Germany:6'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','costume designer','guest','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
