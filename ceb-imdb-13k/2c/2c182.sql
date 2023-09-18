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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('6-Track Stereo','AGA Sound System','DTS','DTS-Stereo','Datasat','Dolby Digital EX','Dolby Digital','Dolby','Mono','Perspecta Stereo','Silent','Ultra Stereo','Vitaphone'))
AND (mi2.info IN ('CAM:Red One Camera','PCS:CinemaScope','PCS:DV','RAT:1.78 : 1 / (high definition)','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.5674)','(#1.73)','(1999-06-14)','A Capitol Fourth','Brutal Massacre: A Comedy','Carlos','Day of the Dead','Mansion of Blood','My Two Dads','Petit déjeuner compris','Solitudes','Spring Fever','Spurlos verschwunden','The Adventures of Pluto Nash','The Black Sheep','The Show-Off','The Talent Show','The Tracker','Witchcraft','Yesterdays Tomorrow'))
