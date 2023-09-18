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
AND (it1.id IN ('5','6'))
AND (mi1.info IN ('Brazil:18','Datasat','Denmark:7','Germany:BPjM Restricted','Hong Kong:I','Hungary:16','India:U','Ireland:12','Malaysia:18PL','Malaysia:PG-13','Mexico:C'))
AND (n.name ILIKE '%gui%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','composer','editor','production designer','writer'))
GROUP BY mi1.info, n.name
