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
AND (it1.id IN ('2','5','8'))
AND (mi1.info IN ('Brazil:Livre','Canada:13+','Chile:14','Color','Finland:K-15','Finland:S','France:-12','Iceland:12','Italy:T','Netherlands:AL','Portugal:M/16','Switzerland:14','Switzerland:7','USA:Passed','USA:Unrated'))
AND (n.name ILIKE '%mcc%')
AND (kt.kind IN ('episode','movie'))
AND (rt.role IN ('actor','cinematographer','composer','costume designer'))
GROUP BY mi1.info, n.name
