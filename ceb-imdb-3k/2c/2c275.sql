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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Berlin, Germany','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','England, UK','Madrid, Spain','Malibu, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Red Rock Canyon State Park - Highway 14, Cantil, California, USA','Twickenham Film Studios, St Margarets, Twickenham, Middlesex, England, UK','Vienna, Austria'))
AND (mi2.info IN ('Canada:14A','Finland:(Banned)','Finland:K-15','Finland:K-18','Finland:K-8','Sweden:Btl','UK:18','USA:G','USA:Not Rated','USA:R','USA:TV-G','USA:Unrated','West Germany:6'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('costume designer','editor','producer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.10)','(#1.109)','(#1.28)','(#2.2)','(#3.12)','(#5.29)','(#5.7)','(#7.6)','(#8.10)','A Family Affair','Anna','Best Foot Forward','Crisis','Cry Wolf','Das indische Grabmal','Do Not Disturb','Everybody Does It','Gaslight','Hollywood Hotel','I Married an Angel','If I Had a Million','Julius Caesar','Kitty Foyle','Mandrin','Marry Me','Monty Python and the Holy Grail','Mutiny on the Bounty','No Escape','Obsession','Panic','Peer Gynt','Reunion','Stage Door Canteen','Teresa','The Gypsies','The Joker Is Wild','The Kidnapping','The Noose','The Other Man','The Peacemaker','The Picnic','The Replacement','The Shakiest Gun in the West','The Survivor','The Tycoon','Tonka'))
