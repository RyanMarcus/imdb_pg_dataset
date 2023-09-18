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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Hollywood, Los Angeles, California, USA','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','San Francisco, California, USA','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 20, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 27A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 30, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Studio 33, CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Studio 8H, NBC Studios - 30 Rockefeller Plaza, Manhattan, New York City, New York, USA'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Dolby SR','Dolby','Mono','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','producer','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.236)','(#1.523)','(#1.527)','(#1.606)','(#7.30)','(#8.19)','An Enemy of the People','Code of Silence','Doctor Ducks Super Secret All-Purpose Sauce','Dritter Teil','First Blood','Ghost in the Machine','Heimlichkeiten','I Do, I Do','I Spy','La provinciale','Look Whos Talking','Native Son','New York Giants vs. Philadelphia Eagles','Out to Lunch','Teil 1','The Young and the Restless','Touch of Death'))
