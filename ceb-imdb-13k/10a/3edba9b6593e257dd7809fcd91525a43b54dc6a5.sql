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
AND (it1.id IN ('3','5'))
AND (mi1.info IN ('Denmark:15','Denmark:7','France:X','Hong Kong:III','Iceland:14','Ireland:12A','Japan:PG12','Netherlands:14','Netherlands:18','New Zealand:G','New Zealand:R13','Portugal:M/4','South Africa:PG','Switzerland:0','West Germany:18'))
AND (n.name ILIKE '%alla%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('actress','director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
