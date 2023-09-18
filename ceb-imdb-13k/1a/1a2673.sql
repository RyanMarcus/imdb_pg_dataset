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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$150,000','$2,500,000','$25,000','$3,000,000','$4,000','$5,000,000','$6,000','$75,000','£1,000','€ 20,000'))
AND (mi2.info IN ('Arabic','Finnish','Hebrew','Italian','Japanese','Mandarin','None','Norwegian','Portuguese','Russian','Spanish','Swedish'))
AND (kt.kind in ('episode','movie','video game'))
AND (rt.role in ('cinematographer','director','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
