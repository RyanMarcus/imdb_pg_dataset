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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Cantonese','English','Georgian','German','Hungarian','Italian','None','Portuguese','Romanian','Serbo-Croatian','Spanish','Swedish'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.64)','(#4.2)','Anniversary','Custers Last Stand','Law and Disorder','One Life to Live','Playthings of Desire','Reign of Terror','Rendezvous','Rio Grande','She Gets Her Man','Step Lively','The Desert Fox: The Story of Rommel','The Razors Edge','This Is the Army','Treasure Hunt','Week-End at the Waldorf'))
