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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:18','Australia:M','France:U','Germany:12','Sweden:Btl','UK:U','USA:Not Rated','USA:Passed'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actress','costume designer','guest','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.100)','(#1.50)','(#1.79)','(#1.86)','(#1.99)','(#4.15)','(#4.3)','(#5.23)','(#5.24)','(#6.17)','(#6.3)','(#8.4)','California','Der Hexer','Dream Girl','Dritter Teil','Emilia Galotti','Girl Crazy','Il giorno più corto','Kdyby tisíc klarinetu','Lady in the Dark','Mayerling','Richard III','Stage Door','Stagecoach','The Breaking Point','The Life of the Party','The Shakedown','The Widow','Whiplash','World of Sport','You Came Along'))
