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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Buenos Aires, Federal District, Argentina','London, England, UK','Madrid, Spain','Rome, Lazio, Italy','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Stage 27A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 42, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Stage 9, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Studio 33, CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','The Lot - 1041 N. Formosa Avenue, West Hollywood, California, USA'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','costume designer','editor'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
