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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Silent','Stereo'))
AND (mi2.info IN ('Adventure','Biography','Drama','History','Musical','Short','Western'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('actor','composer','editor','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.17)','(#1.39)','(#1.77)','(#2.18)','(#2.34)','(#4.6)','All Star Comedy Carnival','Antigone','Assassin','Beatrice Cenci','Brief Encounter','Clash by Night','Cleopatra','Collectors Item','Collision Course','Das sündige Dorf','Der Bettelstudent','Gypsy','Hideout','Ill Tell the World','Im weißen Rößl','Its a Wonderful Life','Jennifer','Juha','Revenge','Sweet Charity','The Boss','The Cure','The Dream','The Grapes of Wrath','The Haunted House','The Hunted','The Princess','The Specialists','Time to Kill','Universal Newsreel','Urlaub auf Ehrenwort','Winner Take All','Wyoming'))
