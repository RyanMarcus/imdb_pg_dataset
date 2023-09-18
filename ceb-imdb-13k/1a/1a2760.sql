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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$10,000','$150','$200','$25,000','$40,000','$7,000'))
AND (mi2.info IN ('Action','Animation','Biography','Comedy','Crime','Documentary','Family','Horror','Romance','Sport','Talk-Show','War','Western'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('editor','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
