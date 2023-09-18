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
AND (mi1.info IN ('Argentina:13','Argentina:Atp','Australia:G','Canada:13+','Finland:K-11','Mexico:B','Netherlands:12','Netherlands:AL','Philippines:R-18','Sweden:7','Switzerland:16','Switzerland:7','UK:18','USA:PG'))
AND (n.name ILIKE '%bra%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer','costume designer'))
GROUP BY mi1.info, n.name
