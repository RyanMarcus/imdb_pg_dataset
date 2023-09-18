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
AND (mi1.info IN ('103','105','109','25','54','55','76','77','88','90','92','94','USA:25','USA:90'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Madrid, Spain','Mexico City, Distrito Federal, Mexico','Mexico'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','guest','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
