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
AND (it1.id in ('7'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('MET:100 m','MET:130 m','MET:15.2 m','PCS:Spherical','PCS:Techniscope'))
AND (mi2.info IN ('Hungary','India','Soviet Union','Turkey','West Germany','Yugoslavia'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('actor','composer','costume designer','director','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.108)','(#1.37)','(#1.62)','(#2.2)','(#2.24)','(#2.9)','(#3.12)','(#3.29)','(#3.9)','(#5.4)','(#6.1)','(#6.4)','Back Street','Blue Skies','Custers Last Stand','Der Hexer','Die Brücke','End of the Road','I Take This Woman','Its a Wonderful World','Jennifer','Krach im Hinterhaus','Part 4','Ransom','Reckless','Scandal','Tales of Manhattan','The Amazing Exploits of the Clutching Hand','The Exchange','The Great Train Robbery','The Greatest Show on Earth','The Gunfighter','The Happiest Days of Your Life','The Hiding Place','The Shadow','The War of the Worlds','Untamed','Up Front'))
