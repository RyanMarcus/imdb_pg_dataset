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
AND (it1.id IN ('3','4','5'))
AND (mi1.info IN ('Canada:18','Chile:18','Hindi','Hong Kong:I','Iceland:10','Ireland:12A','Korean','Malaysia:18','Malaysia:18SG','New Zealand:PG','Singapore:R21','Taiwan:GP','Venezuela:PG-13'))
AND (n.name ILIKE '%bill%')
AND (kt.kind IN ('episode','movie'))
AND (rt.role IN ('editor','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
