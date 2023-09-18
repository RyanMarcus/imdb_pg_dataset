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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Auckland, New Zealand','Belgium','Bucharest, Romania','Calgary, Alberta, Canada','Cleveland, Ohio, USA','Long Beach, California, USA','Melbourne, Victoria, Australia','Munich, Bavaria, Germany','New York, New York, USA','Portugal','Stage 10, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 23, Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Stage 37, Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (mi2.info IN ('Arabic','Bengali','Croatian','Dutch','Filipino','German','Hebrew','None','Polish','Romanian','Russian','Serbo-Croatian','Telugu'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('director','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
