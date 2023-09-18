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
AND (it1.id in ('1'))
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('7','86','9','90','USA:10','USA:13','USA:4'))
AND (mi2.info IN ('$1,500','$15,000','$2,000','$200','$200,000','$25,000','$3,000,000','$30,000','$300','$50,000','$6,000','$75,000'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','director','guest','miscellaneous crew'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#11.31)','(#5.39)','(1998-08-05)','Die Another Day','Life During Wartime','Never','Onihei hankachô','Pawns','South Beach','The Blob','The Book','The Brass Ring','The Flood','The Night Stalker','The Opposite Sex','Urban Jungle: PErshing Square'))
