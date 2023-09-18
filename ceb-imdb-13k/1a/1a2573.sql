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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Barcelona, Cataluña, Spain','Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Berlin, Germany','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Montréal, Québec, Canada','Rome, Lazio, Italy','Stage 11, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 17, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 19, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 41, Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (mi2.info IN ('101','108','110','111','49','60','90','91','97','98','Argentina:60','USA:100','USA:30','USA:60','USA:90'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','costume designer','guest','miscellaneous crew','production designer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
