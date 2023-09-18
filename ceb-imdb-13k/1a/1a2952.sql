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
AND (it1.id in ('1'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('102','110','116','20','UK:50'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Buenos Aires, Federal District, Argentina','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Hollywood, Los Angeles, California, USA','Los Angeles, California, USA','Madrid, Spain','New York City, New York, USA','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','San Francisco, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 30, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Toronto, Ontario, Canada','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','costume designer','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
