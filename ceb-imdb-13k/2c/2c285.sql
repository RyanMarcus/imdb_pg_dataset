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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Belgium','East Germany','Finland','Iran','Italy','Japan','Mexico','Netherlands','Philippines','Portugal','Spain','Sweden','Switzerland','Turkey','Yugoslavia'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.0)','(#1.41)','(#1.43)','(#2.31)','(#2.8)','(#3.2)','(#5.6)','(#5.7)','(#6.24)','A Connecticut Yankee in King Arthurs Court','A Night Out','After the Ball','Blind Date','Crime Wave','Dobrý voják Svejk','Girls! Girls! Girls!','Island in the Sky','Ladies Man','Luxury Liner','Mayerling','Osvobozhdenie','Putney Swope','Reckless','Rio Grande','Tennessee Johnson','The Band Wagon','The Big Gamble','The Champ','The Engagement Ring','The Fighting Devil Dogs','The Heiress','The Hoodlum Saint','The Miracle of the Bells','The Outcast','The Sea Hawk','The Snows of Kilimanjaro','The Specialists','The Texas Rangers','Värmlänningarna','Whats in a Name?'))
