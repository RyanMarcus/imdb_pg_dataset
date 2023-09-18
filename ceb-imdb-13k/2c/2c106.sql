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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Mono','Silent'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Buenos Aires, Federal District, Argentina','CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','London, England, UK','Mexico','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','editor','guest','miscellaneous crew','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.15)','(#8.9)','Behind the Mask','Circumstantial Evidence','Dixie','Ein idealer Gatte','Everybody Does It','Florian','Guest in the House','King of the Mountain','Melodi grand prix','Monsieur Beaucaire','Mr. Skeffington','One Sunday Afternoon','Pursued','Stella','The Baby','The Betrayal','The Cat and the Fiddle','The General','The Hunters','The Impostor','The Kidnapping','The Man Who Broke the Bank at Monte Carlo','The Medicine Man','The Other Man','The Pursuit of Happiness','The Texas Rangers'))
