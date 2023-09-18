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
AND (it1.id in ('1'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('101','15','17','3','50','6','83','USA:18','USA:30'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('director','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.118)','(#3.28)','(#5.27)','A Dispatch from Reuters','Brigadoon','Catspaw','Ein idealer Gatte','Hangmen Also Die!','High Finance','Holnap lesz fácán','Its a Great Life','Kim','Kismet','Love Letters','Maya Bazaar','Mihai Viteazul','National Velvet','Navy Wife','Paula','Saturdays Hero','Teresa','The Gunman','The Magician','The Mark of Cain','The Witness','This Is the Army'))
