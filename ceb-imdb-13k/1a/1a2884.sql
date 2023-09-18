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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adventure','Animation','Comedy','Documentary','Film-Noir','History','Musical','Sci-Fi','Sport','War','Western'))
AND (mi2.info IN ('Argentina:Atp','Australia:R','Canada:18+','Finland:(Banned)','Finland:S','France:-12','Iceland:16','New Zealand:R18','Singapore:NC-16','UK:15','West Germany:o.Al.'))
AND (kt.kind in ('video game','video movie'))
AND (rt.role in ('director','editor'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
