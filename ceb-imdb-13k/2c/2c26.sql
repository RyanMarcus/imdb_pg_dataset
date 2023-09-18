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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bulgarian','Dutch','Filipino','German','Hungarian','Mandarin','Polish','Swedish'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.104)','(#1.53)','(#1.83)','(#1.97)','(#2.29)','(#4.27)','(#6.10)','(#7.4)','All the Kings Men','By the Book','Cyrano de Bergerac','Der Hauptmann von Köpenick','Exposed','Janie','La porteuse de pain','Like Father, Like Son','Miyamoto Musashi','Once in a Lifetime','Reunion in France','Rich Man, Poor Man','Target','The Beginning or the End','The Daring Young Man','The Locket','The Plainsman','The Shadow','The Silent Witness','The Spoilers','The Web','Time to Kill','Who Done It?','Your Witness'))
