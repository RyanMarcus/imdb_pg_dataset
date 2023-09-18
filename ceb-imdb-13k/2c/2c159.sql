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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Mono','Silent','Stereo'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.218)','(#1.442)','(#1.553)','(#2.50)','Flesh Gordon Meets the Cosmic Cheerleaders','Funny Girl','Gas','Gold Fever','Home Sweet Home','Home','Illegally Yours','Jaws 3-D','Miyamoto Musashi','Reflections','The Doctors','The Patsy','The Plays the Thing','The Sniper','The Windfall','Vicious Circle'))
