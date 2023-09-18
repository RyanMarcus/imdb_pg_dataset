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
AND (it1.id in ('6'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Dolby','Mono','Ultra Stereo'))
AND (mi2.info IN ('Buenos Aires, Federal District, Argentina','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Mexico','New York City, New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','San Francisco, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','editor','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.162)','(#1.633)','(#1.838)','(#1.954)','(#10.11)','(#9.3)','Alone in the T-Shirt Zone','Ciske de Rat','Crossing Delancey','Fly Away Home','I Spy','Iceman','Illegally Yours','Into the Night','Laura','Little Boy Blue','Paris brûle-t-il?','Shadow of a Doubt','The Browning Version','The Fourth Reich','The Outsider'))
