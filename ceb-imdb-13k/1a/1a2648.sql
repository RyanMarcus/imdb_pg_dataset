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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Austria','Belgium','Canada','France','Germany','Italy','Netherlands','Portugal','Spain','Sweden','UK','USA'))
AND (mi2.info IN ('Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','London, England, UK','New York City, New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Revue Studios, Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('composer','costume designer','guest','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
