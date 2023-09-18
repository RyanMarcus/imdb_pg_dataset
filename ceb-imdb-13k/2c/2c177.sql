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
AND (mi2.info IN ('Australia','Brazil','Chile','Israel','Nigeria','Thailand','Turkey','USA','Ukraine'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','editor','guest'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(1997-12-17)','(1999-02-19)','(2000-03-21)','Anna and the King','Birth of a Salesman','Engraçadinha... Seus Amores e Seus Pecados','FC Venus','Judas Priest','Let No Man Put Asunder','Safari','The Bench','The Guardian','Truth or Dare','Unad Will Be Asked If He Wants to Force Evict One of His Housemates','What If...'))
