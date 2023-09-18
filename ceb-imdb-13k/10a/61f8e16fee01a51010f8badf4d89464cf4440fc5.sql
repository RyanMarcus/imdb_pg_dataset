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
AND (mi1.info IN ('Brazil:18','Canada:14+','Germany:BPjM Restricted','Greece:K-13','Netherlands:14','Norway:16','Peru:18','Singapore:G','South Africa:13V','Switzerland:0','UK:A','UK:AA'))
AND (n.name ILIKE '%mat%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','editor','production designer','writer'))
GROUP BY mi1.info, n.name
