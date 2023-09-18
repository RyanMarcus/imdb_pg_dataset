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
AND (mi1.info IN ('Australia','Belgium','Brazil','France','Hong Kong','Italy','Mexico','Spain','Switzerland','UK','Yugoslavia'))
AND (mi2.info IN ('Los Angeles, California, USA','Montréal, Québec, Canada','Philippines','Rome, Lazio, Italy','San Francisco, California, USA','Toronto, Ontario, Canada','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('movie','video game'))
AND (rt.role in ('composer','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
