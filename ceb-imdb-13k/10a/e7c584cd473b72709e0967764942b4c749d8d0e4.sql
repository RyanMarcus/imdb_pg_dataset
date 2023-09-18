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
AND (it1.id IN ('5'))
AND (mi1.info IN ('Brazil:Livre','Canada:13+','Finland:(Banned)','Finland:K-18','Hong Kong:III','Netherlands:6','New Zealand:R16','Norway:11','Norway:16','Norway:18','Philippines:G','Philippines:R-13','South Korea:All','Switzerland:16','UK:A','USA:G','USA:TV-G','West Germany:18','West Germany:6'))
AND (n.name ILIKE '%odo%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
