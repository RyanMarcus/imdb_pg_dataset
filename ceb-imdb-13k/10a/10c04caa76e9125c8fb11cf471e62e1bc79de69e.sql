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
AND (mi1.info IN ('Australia:MA15+','Brazil:Livre','Canada:14A','Germany:o.Al.','Greece:K-13','Ireland:15','Ireland:18','New Zealand:PG','Norway:16','Portugal:M/16','Sweden:15','UK:E','West Germany:16'))
AND (n.name ILIKE '%davi%')
AND (kt.kind IN ('tv movie','tv series','video game'))
AND (rt.role IN ('actress','director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
