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
AND (it1.id in ('7'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Panavision Lenses','LAB:DeLuxe','LAB:Movielab, USA','LAB:Technicolor, UK','OFM:35 mm','OFM:65 mm','OFM:Video','PCS:CinemaScope','PCS:Kinescope','PCS:Techniscope','RAT:1.33 : 1','RAT:2.20 : 1','RAT:2.35 : 1','RAT:4:3'))
AND (mi2.info IN ('Corriganville, Ray Corrigan Ranch, Simi Valley, California, USA','Filmways Studios - 246 East 127th Street, East Harlem, Manhattan, New York City, New York, USA','Los Angeles, California, USA','Rome, Lazio, Italy','Stage 28A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 36, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','costume designer','producer','production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.110)','(#4.22)','Airport','Backlash','Custers Last Stand','Die Falle','Die Fledermaus','Double Cross','Follow the Leader','Gone to Earth','Great Expectations','Honky Tonk','Noblesse Oblige','Otello','Paula','Please Believe Me','Revolucni rok 1848','Runaway','The Black Widow','The Contract','The Execution','The Front Page','The Fugitive','The Imposter','The Impostor','The Intruder','The Sea of Grass','The Secret Life of Walter Mitty','The Silver Chalice','The Snows of Kilimanjaro','The Trouble with Women','Treasure Island','Your Witness'))
