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
AND (mi1.info IN ('Belgium','Brazil','Bulgaria','China','Georgia','Germany','Indonesia','Pakistan','Philippines','Poland','South Africa','Spain','Taiwan'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.100)','(#1.144)','(#1.47)','(#1.735)','(#2.59)','(#6.16)','(1988-12-17)','Appearances','Brutal Glory','Catherine','Emily','Empire of the Sun','Hear No Evil','Inside Out','Les Miserables','Linda','Night Patrol','Pot-Bouille','Rain Man','Reach for the Sky','Summer Holiday','The 62nd Annual Academy Awards','The Birthday Party','The Border','The Passing','The Professor','Trial by Fury','Under Pressure','Why Me?'))
