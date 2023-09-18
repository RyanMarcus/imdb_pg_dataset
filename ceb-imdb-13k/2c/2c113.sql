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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Panaflex Camera and Lenses by Panavision','LAB:DeLuxe','LAB:Fotofilm S.A., Madrid, Spain','LAB:Kinuta Laboratories, Tokyo, Japan','OFM:Video','PCS:(anamorphic)','PCS:Techniscope','RAT:1.33 : 1','RAT:2.35 : 1'))
AND (mi2.info IN ('104','72','73','80','93','95','France:90','USA:25','USA:30','West Germany:90'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','editor','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.1068)','(#1.156)','(#1.180)','(#1.272)','(#1.404)','(#1.425)','(#1.538)','(#1.566)','(#1.657)','(#1.687)','(#1.726)','(#1.834)','(#2.21)','(#7.15)','1984 NFL Draft','A Star Is Born','And the Winner Is...','Blind Ambition','Cry Wolf','Dawn of the Dead','Downtown','Dream Lover','Escape Route','Fame','For Love or Money','General Hospital','Handle with Care','Lawa. Opowiesc o Dziadach Adama Mickiewicza','Loophole','Man of the Year','Night Shift','Opportunity Knocks','Queen City Rocker','Shadow of a Man','Snow Job','Solar Crisis','Stradivari','The Birthday Party','The Godfather','The House','The Operation','The Outing','The Seekers','The Torch','Time Bomb','Time Out','Zatôichi'))
