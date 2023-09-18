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
AND (it1.id IN ('5','6','8'))
AND (mi1.info IN ('Australia','Canada:18A','Chile:14','Finland','Finland:K-11','Finland:K-18','France:-12','France:U','Hong Kong:IIA','Iceland:16','Ireland:12A','New Zealand:M','Norway:15','Philippines:PG-13','SDDS','Switzerland:10','Switzerland:7','UK:12A'))
AND (n.name ILIKE '%harri%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('actress','costume designer','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
