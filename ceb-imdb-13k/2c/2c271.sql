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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Dolby','Stereo','Ultra Stereo'))
AND (mi2.info IN ('Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','New York City, New York, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','San Francisco, California, USA','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('guest','miscellaneous crew','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.195)','(#1.360)','(#1.368)','(#1.481)','(#1.539)','(#1.560)','(#3.10)','Alone in the T-Shirt Zone','Boomerang','Dead Ringers','Don Giovanni','Fall from Grace','Family Tree','Flash Point','Heroes','Im Gonna Git You Sucka','It Happened One Night','Love on the Run','Modern Love','Night Games','Parsifal','Safari','Selva de Pedra','The Cage','The Frame','The Skin Game','Theres No Place Like Home','Turning Point','Windfall'))
