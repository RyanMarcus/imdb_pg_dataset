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
AND (it1.id IN ('2','5'))
AND (mi1.info IN ('Canada:14','France:12','Hong Kong:III','Hungary:16','Iceland:14','India:U','Ireland:16','Malaysia:18','Malaysia:18PL','Mexico:C','Netherlands:9','New Zealand:PG','Norway:10','Portugal:M/18','Singapore:G','Switzerland:0'))
AND (n.name ILIKE '%rand%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','composer','editor','production designer','writer'))
GROUP BY mi1.info, n.name
