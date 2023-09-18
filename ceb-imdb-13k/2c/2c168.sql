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
AND (it1.id in ('4'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Arabic','Bengali','Danish','Filipino','French','German','Hungarian','Korean','Russian','Serbo-Croatian','Spanish','Telugu','Turkish'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('actor','actress','cinematographer','editor','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.1)','(#1.18)','(#1.71)','(#1.93)','(#3.20)','(#3.7)','(#4.27)','(#4.35)','(#6.4)','Anna Karenina','Backfire','Du Barry Was a Lady','Exposed','French Leave','Il giorno più corto','Jailhouse Rock','Le fantôme de la liberté','Madame Sans-Gêne','No Place to Hide','Pursuit','The Dinner Party','The Fight','The Great Gatsby','The Message','The Talk of the Town','The Unknown','Threes a Crowd','Twelfth Night','Wake Island'))
