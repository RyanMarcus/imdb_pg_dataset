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
AND (it1.id in ('4'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Czech','Dutch','English','Filipino','Finnish','French','Hindi','Latin','Mandarin','Polish','Swedish','Tagalog'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Los Angeles, California, USA','Madrid, Spain','Mexico City, Distrito Federal, Mexico','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Philippines','Revue Studios, Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','guest'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.12)','(#1.22)','(#1.48)','(#1.86)','(#2.1)','(#2.41)','(#3.2)','(#4.14)','(#5.12)','(#7.13)','AFL-NFL World Championship Game','Above and Beyond','Arabian Nights','Bedtime Story','Blind Mans Bluff','Carmen','Compact','Cornered','Cover Girl','Don Quixote','Duffys Tavern','Government Girl','Jane Eyre','Ladies Man','Meet the People','Monsieur Beaucaire','On Trial','One for the Road','Samson and Delilah','Shine on Harvest Moon','Some Like It Hot','Stranded','Swing Fever','The Appointment','The Bridge','The Gift','The Godfather: Part II','The Guiding Light','The Hostages','The Love Bug','The Miracle of the Bells','The Rainmaker','The Scarlet Pimpernel','The Survivors','The Trap','The Wrecker','The Wrestler','Trial by Fire','Who Was That Lady?'))
