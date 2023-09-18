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
AND (mi1.info IN ('Mexico','Pakistan','Poland','South Korea','Soviet Union','Switzerland'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.109)','(#1.88)','(#2.1)','(#3.12)','(#4.18)','(#6.7)','(#7.20)','Conspiracy of Silence','Dead of Night','Der Rosenkavalier','Die Brücke','Dinner at Eight','Drums of Fu Manchu','El amor tiene cara de mujer','Interlude','Justice','Meet Danny Wilson','New Musical Express Poll Winners Concert','Once in a Lifetime','Pacific Blackout','Saturdays Hero','Si Paris nous était conté','St. Louis Blues','Stage Fright','Stakeout','The Accident','The Adventures of Huckleberry Finn','The Godfather','The Name of the Game','The Professional','The Reward','The Specialists','The Story of Will Rogers','Treasure Island','Two of a Kind','Voyna i mir','Who Was That Lady?'))
