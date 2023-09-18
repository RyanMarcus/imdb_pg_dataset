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
AND (mi1.info IN ('Action','Animation','Comedy','Crime','Drama','Family','Fantasy','History','Music','Musical','Mystery','Short','Sport','Talk-Show'))
AND (mi2.info IN ('$100,000','$15,000','$15,000,000','$250,000','$35,000','$6,000,000','£500','€ 10,000','€ 100','€ 100,000','€ 2,000','€ 5,000','€ 500'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
