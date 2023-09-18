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
AND (it1.id in ('3'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Adventure','Crime','Drama','Fantasy','Film-Noir','Sci-Fi','Short','Western'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','costume designer','director'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.56)','(#1.70)','(#1.73)','(#3.15)','(#8.13)','All the Kings Men','Batman','Bedtime Story','Birds of a Feather','Branded','Dick Tracy','Inside Job','Les deux orphelines','Of Human Bondage','Rhapsody in Blue','Rózsa Sándor','Sanctuary','Scapegoat','Sisters','Stampede Wrestling','Thats the Spirit','The Avengers','The Big Gamble','The Payoff','The Wild Party','Two Tickets to Broadway','Two of a Kind','Welcome Home'))
