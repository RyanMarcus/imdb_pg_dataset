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
AND (mi1.info IN ('Budapest, Hungary','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Orlando, Florida, USA','Stage 19, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 24, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 5, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('cinematographer','editor','miscellaneous crew','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
