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
AND (it1.id in ('3'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Animation','Comedy','Crime','Documentary','Drama','Family','History','Horror','Music','Mystery','Sci-Fi','Short','Sport'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1)','(#1.114)','(#1.44)','(#1.87)','(#8.9)','A-Haunting We Will Go','Breakthrough','Daddy Long Legs','Dinner at Eight','Faces','King Lear','Kismet','Stage Struck','The Avenger','The Boss','The Edge of Night','The Grapes of Wrath','The Last Hurrah','The Lemon Drop Kid','Time Out of Mind','Zweiter Teil'))
