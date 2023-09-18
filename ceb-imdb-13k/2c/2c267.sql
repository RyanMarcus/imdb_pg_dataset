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
AND (it1.id in ('3'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Biography','Fantasy','Game-Show','Music','Musical','Romance','Sport','Western'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.1082)','(#1.213)','(#1.456)','(#1.489)','(#1.499)','(#1.638)','(#1.682)','Amazon Women on the Moon','As Time Goes By','As You Like It','Bellbird','Cabin Fever','Cash and Carry','Christmas Show','Christmas Special','Countdown','Cry for Help','Dear Mom and Dad','Discipline','God Bless the Child','Great Expectations','Hairspray','Hemingway','Ill Be Seeing You','Ivanhoe','La porteuse de pain','Macbeth','Magnum Force','Murder Rap','New York Giants vs. St. Louis Cardinals','Night Club','Operation Petticoat','Road Lawyers and Other Briefs','Shogun','Smile','Superstition','Teachers','The Best of Everything','The Big Job','The Gamble','The Kidnapping','The Last Enemy','The Pigeon','The Raid','The Story of Will Rogers','The Strongest Man in the World','The Tender Trap','Ties That Bind'))
