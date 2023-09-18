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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Atp','Canada:G','Finland:(Banned)','Iceland:16','Italy:VM14','Italy:VM18','Spain:T','Sweden:11','UK:12','UK:PG','UK:U','USA:Approved','USA:G','USA:R','USA:Unrated'))
AND (mi2.info IN ('English','Finnish','French','Hindi','Latin','Mandarin','Russian','Spanish','Swedish'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.22)','(#1.72)','(#2.2)','(#5.4)','Dick Tracys G-Men','Game 7','High Society','Life with Father','Madame Bovary','Man of a Thousand Faces','Masquerade','Part 4','Raffles','Tennessee Johnson','Thats Entertainment!','The Pit','The Ten Commandments','True Confession'))
