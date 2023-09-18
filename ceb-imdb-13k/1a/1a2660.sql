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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$1,000,000','$12,000','$200,000','$3,500,000','$30,000','$35,000','$350,000','$4,000','$60,000','$60,000,000','$70,000,000','$750,000','€ 3,000','€ 300,000'))
AND (mi2.info IN ('Atlanta, Georgia, USA','Austin, Texas, USA','Berlin, Germany','Las Vegas, Nevada, USA','London, England, UK','Miami, Florida, USA','Paris, France','Philadelphia, Pennsylvania, USA','Rome, Lazio, Italy','Toronto, Ontario, Canada','USA'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('actor','editor','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
