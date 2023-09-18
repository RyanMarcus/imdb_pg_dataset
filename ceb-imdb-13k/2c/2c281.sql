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
AND (mi1.info IN ('Argentina','Denmark','Egypt','France','Greece','Hungary','India','Italy','Japan','Netherlands','West Germany','Yugoslavia'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('actress','guest','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.41)','(#1.81)','(#1.92)','(#2.27)','(#4.29)','A Matter of Honor','After the Thin Man','All the Kings Men','Dead Reckoning','Deadfall','Errand of Mercy','Mary of Scotland','Meet the People','Mildred Pierce','O Lucky Man!','One Good Turn','Rendezvous','The Bridge','The Dark Angel','The Enchanted','The Four Horsemen of the Apocalypse','The Gangster','The Imposter','The Naked City','The Outcasts of Poker Flat','The Stowaway','The Survivor','The Winslow Boy','Tora! Tora! Tora!'))
