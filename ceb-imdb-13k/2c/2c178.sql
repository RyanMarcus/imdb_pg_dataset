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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arriflex Cameras','CAM:Panaflex Camera and Lenses by Panavision','CAM:Panavision Cameras and Lenses','LAB:Boyana Film Laboratory, Sofia, Bulgaria','LAB:DeLuxe','LAB:Film Center, Mumbai, India','LAB:Fotofilm S.A., Madrid, Spain','LAB:Kinuta Laboratories, Tokyo, Japan','LAB:Rank Film Laboratories, Denham, UK','PCS:(anamorphic)','PFM:Video','RAT:1.37 : 1','RAT:4:3'))
AND (mi2.info IN ('Argentina','Brazil','Iran','Italy','Netherlands','USA'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('actor','composer','guest','producer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.103)','(#1.183)','(#1.245)','(#1.392)','(#1.439)','(#1.504)','(#1.679)','(#1.689)','(#1.962)','(#2.22)','(#2.27)','(1989-03-24)','A Matter of Choice','Brookside','Cindy','Comeback','Cops and Robbers','Firestorm','Heidi','His Brothers Keeper','Maybe Baby','No Exit','Popples','San Diego Chargers vs. Seattle Seahawks','Shakedown','Stree','The Best of Enemies','The Border','The Country Girl','The Decoy','The Hunted','The Savage','Uzicka Republika'))
