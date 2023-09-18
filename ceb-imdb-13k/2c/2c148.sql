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
AND (it1.id in ('8'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','India','Iran','Mexico','Netherlands','Poland','Turkey','USA'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.13)','(#1.28)','(#1.92)','(#3.19)','(#6.24)','(#6.6)','(#7.6)','A Matter of Life and Death','All That Glitters','Aoi sanmyaku','Appassionata','Babes in Toyland','Chance of a Lifetime','Dobrý voják Svejk','Finders Keepers','Follow the Boys','Ghost Town','Heritage','Hobsons Choice','Kabale und Liebe','Le capitaine Fracasse','Leuchtfeuer','Mildred Pierce','Only Yesterday','The Connection','The Gamblers','The Harder They Fall','The Invisible Enemy','The Longest Day','The Mark of Cain','The Plainsman','The Promise','The Shakedown','The Spiders Web','The Suspect','The Swordsman','The Target','Tommy','You Cant Take It with You'))
