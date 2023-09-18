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
AND (mi1.info IN ('Argentina:Unrated','Argentina:X','Canada:F','Czech Republic:12','DTS-Stereo','Denmark:16','Finland:K-10','Finland:K-13','Hungary:18','Ireland:12','Japan:R-15','Mexico:AA','Netherlands:9','Norway:7','Taiwan:R-18'))
AND (n.name ILIKE '%mor%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('editor','miscellaneous crew','producer','production designer'))
GROUP BY mi1.info, n.name
