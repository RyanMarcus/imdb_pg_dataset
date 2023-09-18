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
AND (mi1.info IN ('MET:','PCS:Panavision','PCS:Techniscope','PCS:Totalscope','RAT:1.37 : 1'))
AND (mi2.info IN ('Argentina','Belgium','Brazil','Canada','Czechoslovakia','East Germany','Egypt','France','Iran','Japan','Netherlands','Taiwan','Turkey'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','guest','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
