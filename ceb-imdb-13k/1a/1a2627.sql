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
AND (it1.id in ('18'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('France','Hawaii, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Las Vegas, Nevada, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Spain','Vasquez Rocks Natural Area Park - 10700 W. Escondido Canyon Rd., Agua Dulce, California, USA','Washington, District of Columbia, USA'))
AND (mi2.info IN ('Argentina:16','Argentina:Atp','Australia:PG','Canada:A','France:-12','France:-16','Iceland:16','Netherlands:18','Portugal:M/12','Portugal:M/6','Spain:T','Sweden:11','USA:TV-14','USA:TV-G'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('director'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
