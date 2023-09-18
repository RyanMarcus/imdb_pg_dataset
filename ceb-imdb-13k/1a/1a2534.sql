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
AND (it1.id in ('105'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$10,000,000','$100','$150,000','$25,000,000','$3,000','$3,500','$50,000','$500','$6,000,000','$75,000','$8,000','£5,000','€ 15,000','€ 5,000','€ 50,000'))
AND (mi2.info IN ('Greece','India','Italy','Spain','Sweden','USA'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('actress','director','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
