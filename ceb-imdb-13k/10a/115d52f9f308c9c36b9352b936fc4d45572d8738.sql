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
AND (mi1.info IN ('Argentina:13','Argentina:16','Australia:MA','Finland:K-11','Netherlands:16','Singapore:M18','South Korea:15','Sweden:15','UK:15','USA:PG-13','USA:TV-G','USA:TV-MA','USA:TV-PG','USA:Unrated'))
AND (n.name ILIKE '%cha%')
AND (kt.kind IN ('tv movie','video game'))
AND (rt.role IN ('cinematographer','editor','production designer','writer'))
GROUP BY mi1.info, n.name
