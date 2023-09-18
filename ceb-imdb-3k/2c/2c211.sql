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
AND (mi1.info IN ('Alabama Hills, Lone Pine, California, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Hollywood, Los Angeles, California, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Republic Studios, Hollywood, Los Angeles, California, USA','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Shepperton Studios, Shepperton, Surrey, England, UK','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Stereo'))
AND (kt.kind in ('movie','tv movie','video game'))
AND (rt.role in ('costume designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.15)','(#2.2)','(#5.17)','April Fool','Der Bettelstudent','Die Falle','Die Unbesiegbaren','Ein idealer Gatte','Escapade','Full Circle','Game 7','Hamlet','Here Come the Girls','Inferno','Its in the Air','Julius Caesar','Lenny','Marie Antoinette','Night Club','Nous sommes tous des assassins','Otello','Quarta puntata','Ruggles of Red Gap','Solange Leben in mir ist','The Best Man Wins','The Great Impersonation','The Greatest Story Ever Told','The Male Animal','The Matchmaker','The Outcasts of Poker Flat','The Search','The Tunnel','Treasure Island','Two for the Money','Volpone','Wilson'))
