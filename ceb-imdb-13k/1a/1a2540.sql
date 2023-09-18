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
AND (it1.id in ('3'))
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Adventure','Animation','Biography','Music','Mystery','Sci-Fi','Sport'))
AND (mi2.info IN ('$1,000,000','$1,200','$10,000,000','$100,000','$200,000','$25,000,000','$3,500','$350,000','€ 10,000','€ 100,000','€ 2,000','€ 3,000','€ 30,000'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','composer','director','guest'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
