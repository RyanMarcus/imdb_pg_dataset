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
AND (it1.id IN ('2','5'))
AND (mi1.info IN ('Australia:G','Australia:M','Belgium:KT','Black and White','Germany:18','Iceland:16','Netherlands:16','Netherlands:AL','Singapore:M18','South Korea:18','UK:18','UK:PG','UK:R18','USA:E','USA:M','USA:R','USA:T','USA:TV-PG','USA:Unrated','USA:X'))
AND (n.name ILIKE '%ver%')
AND (kt.kind IN ('tv series','video game','video movie'))
AND (rt.role IN ('actress','cinematographer','composer'))
GROUP BY mi1.info, n.name
