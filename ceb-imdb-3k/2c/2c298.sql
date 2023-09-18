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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Comedy','Family','Fantasy','Horror','Mystery','Sci-Fi','Western'))
AND (mi2.info IN ('4-Track Stereo','Dolby','Mono','Silent','Stereo','Ultra Stereo'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.131)','(#1.202)','(#1.334)','(#1.340)','(#1.454)','(#1.61)','(#1.676)','(#2.27)','(#3.2)','(#3.24)','(#5.27)','(#9.1)','(#9.18)','1985 NFL Draft','Akô rôshi - Ten no maki; Chi no maki','Das Boot','Der Name der Rose','Entertainment Tonight','La Bohème','Mga kwento ni Lola Basyang','One Night Stand','Paradise Alley','Part 2','Rage','Rude Awakening','Scarface','Scavenger Hunt','Secrets','Shock Treatment','Sonny Boy','The Innocent','The Mugger','The Other Man','The Outsiders','The Whole Truth','Tightrope'))
