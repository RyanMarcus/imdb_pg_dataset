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
AND (mi1.info IN ('Berlin, Germany','Burbank, California, USA','Canada','London, England, UK','Manhattan, New York City, New York, USA','Melbourne, Victoria, Australia','Miami, Florida, USA','New York City, New York, USA','USA','Washington, District of Columbia, USA'))
AND (mi2.info IN ('$10,000,000','$150,000','$2,000','$2,000,000','$250,000','$300,000','$35,000','$5,000,000','$50,000','$6,000,000','$60,000','$7,000,000','$75,000','$8,000','$80,000,000'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('actress','costume designer','director','editor','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
