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
AND (mi1.info IN ('Belgium','Bucharest, Romania','Burbank, California, USA','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Frankfurt am Main, Hessen, Germany','Memphis, Tennessee, USA','Portugal','Shanghai, China','South Korea','Stage 12, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 30, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Vancouver, British Columbia, Canada'))
AND (mi2.info IN ('Cantonese','Czech','German','Greek','Hebrew','Italian','Korean','Latin','Norwegian','Portuguese','Serbo-Croatian','Spanish','Tamil','Thai'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
