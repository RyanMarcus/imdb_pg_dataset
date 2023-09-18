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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Atp','Australia:R','Canada:AA','Canada:PG','Germany:6','India:Unrated','Italy:VM18','Netherlands:12','Singapore:NC-16','Spain:18'))
AND (mi2.info IN ('Austria','Belgium','Denmark','India','Japan','Philippines','Soviet Union','Spain','Sweden','Switzerland','USA','West Germany','Yugoslavia'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','director','guest','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
