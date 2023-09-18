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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Dolby SR','Dolby','Mono','Ultra Stereo'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Los Angeles, California, USA','Madrid, Spain','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','Mexico','Paris, France','Rome, Lazio, Italy','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','San Francisco, California, USA','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('miscellaneous crew','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.513)','(#1.553)','(#1.650)','(#1.678)','(#1.812)','Baby','Battle of Britain','Cincinnati Bengals vs. Miami Dolphins','Das Vermächtnis','Day One','Diamonds Are Forever','Disco Godfather','Entente Cordiale','Foul Play','G.I. Joe: The Movie','Honor Thy Father','Hostages','Less Than Zero','Lethal Weapon','Los Angeles Raiders vs. San Diego Chargers','Loving','Modern Love','Out of Control','Ransom','Rescue','Roadie','Secret Admirer','Special','The Affair','The Buccaneer','The City','The Judge','The Monster','The Oath','The Red Shoes','The Unholy','The Warriors','Tune in Tomorrow...'))
