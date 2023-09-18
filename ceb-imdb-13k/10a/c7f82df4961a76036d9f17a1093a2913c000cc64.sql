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
AND (it1.id IN ('4','5','6'))
AND (mi1.info IN ('Arabic','Belgium:KT','Brazil:12','Chile:14','Chile:18','Denmark:11','Estonian','Finland:K-11','Georgian','Germany:o.Al.','Lithuanian','Netherlands:6','Norway:16','Philippines:G','Singapore:R(A)','Switzerland:7','USA:TV-MA'))
AND (n.name ILIKE '%aru%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actress','cinematographer','composer','costume designer'))
GROUP BY mi1.info, n.name
