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
AND (it1.id in ('5'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia:PG','Finland:K-16','Finland:K-18','Italy:VM18','Norway:15','Sweden:15','UK:15','UK:PG'))
AND (mi2.info IN ('Canada','France','Hong Kong','Italy','Spain','West Germany'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('producer','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.104)','(#1.99)','(#4.10)','(#5.20)','Anna','Artists and Models Abroad','Bedtime Story','Boy Meets Girl','Casablanca','Court Martial','Crack-Up','Heung gong chat sup sam','Kabale und Liebe','Let em Have It','Los miserables','Nana','Pursued','Ramona','Richard III','Samurai','Snow Job','Tango','The Arrangement','The Cat and the Fiddle','The Dark Angel','The Killers','The Losers','The Patsy','The Road Back','The Shepherd of the Hills','The Swordsman','The Well','Till the Clouds Roll By','Unser Sandmännchen','Whirlpool','Wyoming','You Cant Cheat an Honest Man'))
