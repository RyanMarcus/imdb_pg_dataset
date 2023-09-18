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
AND (mi1.info IN ('Bulgarian','Czech','English','Filipino','Finnish','German','Japanese','Korean','None','Norwegian','Polish','Russian','Telugu'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('composer','editor','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.88)','(#3.20)','(#6.12)','(#7.7)','Dakota','Eyewitness','Help Wanted','Jailbreak','The Accident','The Countess','The Daring Young Man','Volpone','White Heat','You and Me'))
