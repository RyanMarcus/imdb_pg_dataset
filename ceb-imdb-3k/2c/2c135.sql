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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Mono','Stereo'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Buenos Aires, Federal District, Argentina','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Madrid, Spain','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('movie','video game'))
AND (rt.role in ('director','editor'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.47)','(#1.52)','(#2.7)','(#4.1)','(#4.28)','(#6.24)','(#7.15)','A Star Is Born','Ace in the Hole','Adhikar','Annie Get Your Gun','Assignment in Brittany','Backfire','Betrayed','Black Sheep','Blackmail','Don Juan','False Witness','Familie Benthin','For Love or Money','Föltámadott a tenger','Golden Boy','High Tension','In Old Chicago','Just for You','Kitty','Ningen no jôken','O Lucky Man!','Othello','Pressure','Rebecca','So Big','Stormy Weather','The Best Man Wins','The Brothers','The Clown','The Golden Fleece','The Intruder','The Life of the Party','The Night Riders','The Oscar','The Sea Wolf','The Train','The Walls of Jericho','Two for the Money'))
