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
AND (mi1.info IN ('Australia:G','Australia:M','Australia:MA','UK:18','USA:Not Rated','USA:R'))
AND (n.name ILIKE '%russ%')
AND (kt.kind IN ('tv series','video game','video movie'))
AND (rt.role IN ('actor','actress','composer','costume designer'))
GROUP BY mi1.info, n.name
