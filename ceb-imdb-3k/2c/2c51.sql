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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Lisbon, Portugal','Los Angeles, California, USA','San Francisco, California, USA','Stage 18, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 8, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 9, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Arabic','Danish','French','German','Greek','Hindi','Japanese','Mandarin','Spanish'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.246)','(#1.503)','(#1.539)','(#1.576)','(#1.681)','(#5.34)','Black Widow','Breaking Up Is Hard to Do','Buffalo Bills vs. New York Jets','Cinématon','Dark Angel','Dear Mom and Dad','Decision','Del 3','Die Zauberflöte','Don Carlo','Feelings','George Washington','His Brothers Keeper','Its a Dogs Life','Just Friends','King of New York','La traviata','Licence to Kill','Noblesse Oblige','Part 7','Perfect','Pinocchio','Power','Scorpion','South Pacific','Taken for a Ride','The Deadly Game','The Enemy Within','The Great Impostor','The Legend of Sleepy Hollow','The More You Know','The Rack','The Reporter','The Set-Up','The Widow','The Woman','Till Death Do Us Part','Trio'))
