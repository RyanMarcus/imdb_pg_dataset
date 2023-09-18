SELECT mi1.info, n.name, COUNT(*)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n,
info_type as it2,
person_info as pi
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('2','5','8'))
AND (it2.id IN ('20'))
AND (mi1.info IN ('Argentina:13','Australia:MA15+','Belgium:KT','Canada:16+','Canada:18+','Finland','Finland:K-11','Germany:16','Germany:18','Hungary','Portugal:M/4','Portugal:M/6','Spain:X','USA:Unrated'))
AND (n.name ILIKE '%el%')
AND (kt.kind IN ('tv movie','video game','video movie'))
AND (rt.role IN ('costume designer','miscellaneous crew','producer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
