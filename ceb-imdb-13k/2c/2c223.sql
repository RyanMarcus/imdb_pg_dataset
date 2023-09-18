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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','Canada','Czechoslovakia','Georgia','Greece','India','Poland','Portugal','Switzerland','UK'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Silent','Stereo'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('actor','actress','editor','miscellaneous crew','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.152)','(#1.416)','(#1.798)','(#1.840)','(#2.14)','(#8.13)','AFL-NFL World Championship Game','All the Way','Der Unfall','Flashback','Higher Education','Is There a Doctor in the House?','Julia','Lover Boy','My Blue Heaven','Revolution','Scorpion','The 41st Annual Golden Globe Awards','The Amateur','The Boy Next Door','The Confession','The Fashion Show','The Long Walk Home','The Visitor'))
