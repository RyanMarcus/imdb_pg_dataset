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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('26','77','81','84','87','88','91','97','99','USA:7'))
AND (kt.kind in ('movie','tv series','video game','video movie'))
AND (rt.role in ('actress','composer','costume designer','director'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.103)','(#1.29)','(#1.35)','(#1.71)','(#1.99)','(#2.31)','(#2.42)','(#4.16)','(#4.21)','Assassin','Beyond the Law','Cops and Robbers','Cry Uncle','Dallas','Das indische Grabmal','Dead Ringer','Delayed Action','Down to Earth','Game 1','Girl Crazy','Gone with the Wind','Jigsaw','Letter of the Law','Melodi grand prix','O Lucky Man!','Outcast','Rich Man, Poor Man','Small Town Girl','Survival','The Assassins','The Black Sheep','The Connection','The Eurovision Song Contest','The Foundling','The General','The Hospital','The Hostages','The Jazz Singer','The Killers','The Last of the Mohicans','The Man Outside','The Man Who Dared','The Man Who Knew Too Much','The Seventh Cross','Whirlpool','World of Sport','Wuthering Heights','You and Me'))
