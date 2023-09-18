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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Dutch','English','Malayalam','Norwegian','Serbo-Croatian'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','composer','costume designer','editor'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.36)','(#1.391)','(#1.399)','(#1.436)','(#5.12)','(#8.8)','A Star Is Born','Airplane!','Blood','Cannonball Run II','Crossed Swords','Diplomatic Immunity','Family Affair','Mans Best Friend','Pillow Talk','Silent Night, Deadly Night','The Deputy','The Great Impostor','The Human Factor'))
