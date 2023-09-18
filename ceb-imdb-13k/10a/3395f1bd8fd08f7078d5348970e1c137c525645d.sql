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
AND (mi1.info IN ('Germany:16','Iceland:12','Iceland:16','Netherlands:16','Singapore:M18','Singapore:PG','UK:12','UK:18','UK:PG','USA:M','USA:Not Rated','USA:T','USA:Unrated','USA:X'))
AND (n.name ILIKE '%lip%')
AND (kt.kind IN ('tv movie','video game','video movie'))
AND (rt.role IN ('cinematographer','composer','editor','production designer','writer'))
GROUP BY mi1.info, n.name
