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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('China','Hungary','Romania','South Africa','South Korea','Switzerland','West Germany'))
AND (mi2.info IN ('Adventure','Biography','Comedy','Crime','Documentary','Drama','History','Music','Romance','Thriller'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.1078)','(#1.132)','(#1.174)','(#1.246)','(#1.452)','(#1.47)','(#1.562)','(#1.593)','(#1.595)','(#1.646)','(#1.656)','(#1.875)','(#2.10)','(#2.14)','(#7.23)','(#9.9)','A Taste of Money','Beauty and the Beast','Beware: Children at Play','Bloodlines','Cold Comfort','Evacuation','Hideout','Hit and Run','Hollywood My Home Town','Insaaf','Justice','Lady Luck','Lily Tomlin','Los chicos de la guerra','Marriage','Mississippi Burning','Mixed Doubles','Murder Rap','Osa 2','Palm Springs Weekend','Robert Kennedy & His Times','Section spéciale','Skin','Starman','Starting Out','The Adventures of Ford Fairlane','The Crossing','The Lesson','Werther','Where Theres a Will','Wolf'))
