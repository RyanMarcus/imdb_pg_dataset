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
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Canada','France','Philippines','Spain','USA','West Germany'))
AND (mi2.info IN ('One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','costume designer','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.110)','(#1.25)','(#1.29)','(#1.30)','(#1.38)','(#1.41)','(#1.65)','(#3.28)','(#3.37)','(#6.8)','(#7.1)','Above Suspicion','Beatrice Cenci','Countdown','Crossfire','Folies Bergère de Paris','Forbidden','Game 1','Here Comes the Groom','Jeanne Eagels','Johnny Belinda','Jugovizija','Kiss Me Kate','La porteuse de pain','Lenny','Million Dollar Baby','Mr. Skeffington','Murder by Proxy','Pacific Blackout','Playmates','Pressure Point','Richard III','Scrooge','Start Cheering','Tango','The Alamo','The Caddy','The City','The Executioner','The Silent Witness','The Verdict','Togetherness','Troubled Waters'))
