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
AND (mi1.info IN ('6-Track Stereo','70 mm 6-Track','DTS','DTS-ES','DTS-Stereo','Dolby SR','Dolby','SDDS','Stereo'))
AND (mi2.info IN ('Adult','Adventure','Animation','Biography','Crime','Documentary','Drama','Game-Show','Horror','Musical','News','Reality-TV','Sci-Fi','Short','Western'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('actress','guest'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.5461)','(#7.69)','(2000-03-29)','(2002-07-10)','(2006-07-17)','Across the Hall','All in the Mind','House Guest','Interview','Long Road Home','Misfit Patrol','The Beautiful Country','The Furlough','The Lost Colony'))
