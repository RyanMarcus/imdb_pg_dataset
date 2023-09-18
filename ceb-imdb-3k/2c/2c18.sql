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
AND (it1.id in ('6'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','DTS','Dolby Digital','Dolby SR','Dolby','Mono','Stereo','Ultra Stereo'))
AND (mi2.info IN ('France:-12','Germany:12','Iceland:L','Netherlands:16','Sweden:Btl','USA:Approved'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','miscellaneous crew','producer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.195)','(#1.33)','(#1.480)','(#1.579)','(#1.683)','(#4.24)','A Fine Romance','Below the Belt','Comic Relief','Days of Thunder','Dead of Night','Executive Action','Ginger e Fred','Good News, Bad News','I promessi sposi','Illusions','La porteuse de pain','Labyrinth','Licensed to Kill','Love Hurts','Meet Me in Las Vegas','Moonlighting','Most','On a volé Charlie Spencer!','Part 9','Scared Stiff','Street Smart','Thanksgiving','Thats Dancing!','The Arena','The Last Emperor','The Outing','The Rival','The Toxic Avenger Part II','Wedding','Zombie Brigade'))
