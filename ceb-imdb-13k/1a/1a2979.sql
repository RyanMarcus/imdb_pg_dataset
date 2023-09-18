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
AND (it1.id in ('18'))
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Atlanta, Georgia, USA','Berlin, Germany','Boston, Massachusetts, USA','California, USA','India','Italy','Madrid, Spain','Manhattan, New York City, New York, USA','Miami, Florida, USA','Seattle, Washington, USA','Washington, District of Columbia, USA'))
AND (mi2.info IN ('$1,500','$100','$200,000','$25,000','$300','$35,000','$35,000,000','$60,000'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','guest'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
