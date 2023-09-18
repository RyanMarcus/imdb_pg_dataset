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
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('France','Ireland','Japan','New Zealand','Norway','USA'))
AND (mi2.info IN ('$10,000','$100,000','$12,000','$2,000,000','$200,000','$3,000,000','$300,000','$500','$75,000','$8,000','£5,000','€ 1,000','€ 10,000'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('composer','guest','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
