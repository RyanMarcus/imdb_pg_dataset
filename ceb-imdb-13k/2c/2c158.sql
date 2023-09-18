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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','DTS','Dolby','Mono','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('director','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1494)','(#1.3459)','(#17.58)','(1997-10-02)','(2002-12-14)','47th Annual Academy of Country Music Awards','A Capitol Fourth','Bloody Mary','Dead and Alive','Dont Be Blinded by the Headlights','Fur: An Imaginary Portrait of Diane Arbus','Home Alone da Riber','Mommy and Me','On Your Way Down','Refugees','Secrets of the Heart','The 31st Annual Peoples Choice Awards','Theres a Pattern Here','U2: Rattle and Hum'))
