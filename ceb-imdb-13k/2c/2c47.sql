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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Argentina:13','Australia:G','Finland:K-18','Norway:16','UK:X','USA:Approved','USA:Passed','West Germany:18'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','director','miscellaneous crew','production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.107)','(#1.21)','(#1.27)','(#1.38)','(#1.60)','(#4.2)','(#8.5)','A Matter of Honor','Accused','Airport 1975','Another Thin Man','Cinderella','Crack-Up','Diamond Jim','Die Ratten','Dritter Teil','Fall Guy','False Witness','Fear','Going Home','Happy Birthday','Harlow','High Stakes','Killer McCoy','Le fantôme de la liberté','Many Happy Returns','Maya Bazaar','Meet the People','Navy Wife','Richard II Part 2: The Deposing of a King','Ride the Man Down','Serenade','Shadow of a Man','Shoot to Kill','Show Boat','Si Versailles métait conté','Star Spangled Rhythm','The Cardinal','The Executioner','The Frog','The Harvey Girls','The One That Got Away','The Plunderers','The Predators','The Shepherd of the Hills','The Winslow Boy','The Wrestler','White Eagle'))
