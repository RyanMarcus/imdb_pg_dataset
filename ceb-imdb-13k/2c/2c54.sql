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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Dutch','Filipino','French','Georgian','Hungarian','None','Portuguese','Russian','Telugu','Urdu'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','editor','miscellaneous crew','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.101)','(#1.95)','(#2.5)','(#3.10)','(#5.3)','Beau Geste','Billy the Kid','Caught in the Act','Collectors Item','Dick Tracy','Double Date','Double Jeopardy','Eagle Squadron','George Whites Scandals','Intolerance: Loves Struggle Throughout the Ages','Jenny','Joan of Arc','Kill or Cure','Lorna Doone','Love Letters','My Wild Irish Rose','Part 3','Pension Schöller','Play School','Reign of Terror','Second Honeymoon','The Adventures of Robin Hood','The Awful Truth','The Bride','The Cage','The Coward','The Daring Young Man','The Fugitive','The Helen Morgan Story','The Hitler Gang','The Kidnapping','The Lodger','The Quest','The Survivor','The Wrestler','Till the Clouds Roll By','Underground','Unser Sandmännchen','What Are Friends For?','Yankee Doodle Dandy'))
