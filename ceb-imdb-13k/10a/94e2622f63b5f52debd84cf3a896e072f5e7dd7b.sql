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
AND (it1.id IN ('5','6','8'))
AND (mi1.info IN ('Argentina:16','Australia:PG','Canada','Canada:14A','Canada:PG','Dolby Digital','Dolby SR','France:U','Germany:16','Iceland:12','Italy','Italy:T','Netherlands:12','Portugal:M/16','Singapore:M18','Singapore:NC-16','Turkey','USA','USA:PG-13'))
AND (n.name ILIKE '%maz%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer'))
GROUP BY mi1.info, n.name
