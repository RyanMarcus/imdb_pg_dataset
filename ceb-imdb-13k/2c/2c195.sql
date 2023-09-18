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
AND (it1.id in ('2'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Berlin, Germany','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','London, England, UK','Los Angeles, California, USA','Madrid, Spain','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.64)','(#1.86)','(#1.97)','(#3.12)','(#3.52)','(#6.11)','2001: A Space Odyssey','April Fool','Border Incident','California','Captain Blood','Cinderella Jones','Destry Rides Again','Dick Tracy Returns','Ein idealer Gatte','Gabriela','Gunfight at the O.K. Corral','I promessi sposi','It Happened One Night','Key Witness','Linda','Madeleine','Miracle on 34th Street','Mutiny on the Bounty','Nob Hill','Nocturne','Quarta puntata','Singin in the Rain','Stagecoach','Step Lively','The Accident','The Bargain','The Contest','The Crucible','The Deserter','The First Day','The Game','The Great Train Robbery','The Hostage','The Lost City','The Milkman','The Picture of Dorian Gray','The Terror','The Whole Towns Talking','Triple Cross','Up Front'))
