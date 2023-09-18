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
AND (mi1.info IN ('LAB:Technicolor','MET:160 m','MET:20 m','MET:200 m','PCS:Techniscope'))
AND (mi2.info IN ('Denmark','Egypt','Germany','India','Poland','Sweden','Switzerland','Turkey','UK','West Germany','Yugoslavia'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
