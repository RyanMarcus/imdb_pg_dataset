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
AND (it1.id IN ('2','5'))
AND (it2.id IN ('24'))
AND (mi1.info IN ('Australia:Refused Classification','Canada:14','Canada:14A','Finland:K-16','Finland:K-3','Ireland:12','Netherlands:9','New Zealand:PG','New Zealand:R13','New Zealand:R18','Portugal:M/6','Spain:18','USA:G','West Germany:16'))
AND (n.name ILIKE '%ki%')
AND (kt.kind IN ('tv movie','video game'))
AND (rt.role IN ('costume designer','director','miscellaneous crew','producer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
