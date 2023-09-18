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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','Dolby','Mono','Silent','Stereo'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('actress','costume designer','editor','miscellaneous crew','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.182)','(#1.416)','(#1.466)','(#1.529)','(#1.643)','(#1.722)','(#1.817)','(#10.4)','(#8.12)','(#9.4)','10','All Night Long','Caged','Caroline chérie','Don Carlos','Dracula','Dream Date','Finale','Heroes','Jane Eyre','Love on the Run','Money','Obsession','One Way Out','Outrage','Part 1','Salvage','Scoop','The 41st Annual Primetime Emmy Awards','The 58th Annual Academy Awards','The Betrayal','The Crossing','The Locket','Trial by Fire'))
