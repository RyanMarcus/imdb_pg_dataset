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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Chicago, Illinois, USA','England, UK','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Los Angeles, California, USA','Montréal, Québec, Canada','New York City, New York, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Sydney, New South Wales, Australia','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Australia','Austria','Belgium','East Germany','France','Mexico','Netherlands','Spain','USA'))
AND (kt.kind in ('episode','tv movie','video game','video movie'))
AND (rt.role in ('actress','composer','costume designer','production designer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.466)','(#1.641)','Adventures in Babysitting','Aftershock','Divorce','Exposure','I Do, I Do','Key to the City','Le malade imaginaire','Midnight Lace','No More Mr. Nice Guy','Runners','Short Circuit','The Bracelet','Wild at Heart'))
