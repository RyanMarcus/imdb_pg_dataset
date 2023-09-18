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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Bengali','Cantonese','Filipino','Korean','Serbo-Croatian','Spanish'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.12)','(#1.94)','(#2.23)','(#3.13)','(#3.30)','(#4.3)','(#5.1)','A Farewell to Arms','Beatrice Cenci','Buried Treasure','Camille','County Fair','Death Watch','Der Feldherrnhügel','Detective Story','Down on the Farm','Election 70','Fair Exchange','Follow the Sun','Hunt the Man Down','La casa de la Troya','Leuchtfeuer','Love','Mandrin','Million Dollar Mermaid','On the Run','Only Yesterday','Part 1','Showdown','Spartacus','Street Scene','Temptation','The Appointment','The Buccaneer','The Contest','The Cure','The Debt','The Fixer','The Gamblers','The Great Adventures of Wild Bill Hickok','The Great Impersonation','The Hunters','The Informer','The Innocent','The Legacy','Togetherness','Up the Junction','With a Song in My Heart','You and Me'))
