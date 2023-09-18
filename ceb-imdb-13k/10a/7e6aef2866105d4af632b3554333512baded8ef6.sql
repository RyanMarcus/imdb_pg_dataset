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
AND (it1.id IN ('2','5','6'))
AND (mi1.info IN ('Canada:PG','DTS','Dolby SR','Dolby','Germany:16','Iceland:16','Italy:T','Netherlands:6','Norway:15','Portugal:M/16','South Korea:15','UK:15','USA:Not Rated','USA:PG-13'))
AND (n.name ILIKE '%victori%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer'))
GROUP BY mi1.info, n.name
