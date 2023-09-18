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
AND (it1.id in ('8'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria','Brazil','Canada','Czechoslovakia','Denmark','Germany','Iran','Japan','Soviet Union','Spain','Switzerland','Turkey','USA'))
AND (mi2.info IN ('17','5','55','61','66','71','78','9','93','97','USA:10'))
AND (kt.kind in ('episode','movie','tv series','video movie'))
AND (rt.role in ('actress','director','editor','miscellaneous crew'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
