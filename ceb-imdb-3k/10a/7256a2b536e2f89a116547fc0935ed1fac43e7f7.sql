SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('2','3','6'))
AND (mi1.info IN ('3 Channel Stereo','6-Track Stereo','70 mm 6-Track','Biography','DTS 70 mm','Dolby Atmos','Dolby SR','Dolby Stereo','Film-Noir','History','Perspecta Stereo','Reality-TV','Sonics-DDP','Talk-Show','War'))
AND (n.name ILIKE '%har%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('actress','costume designer','director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
