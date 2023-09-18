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
AND (mi1.info IN ('Brooklyn, New York City, New York, USA','France','Mexico','Seattle, Washington, USA','UK','Washington, District of Columbia, USA'))
AND (mi2.info IN ('$1,000','$1,000,000','$15,000','$18,000,000','$2,000','$20,000,000','$200','$250,000','$30,000','$35,000,000','$350,000','$4,000,000','$5,000','$6,000,000','$80,000,000'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','composer','director','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
