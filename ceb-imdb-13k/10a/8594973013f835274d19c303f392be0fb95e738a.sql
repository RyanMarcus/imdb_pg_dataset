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
AND (it1.id IN ('3','4','5'))
AND (mi1.info IN ('Biography','Canada:PG','Fantasy','Finland:K-11','Greek','Hungarian','Iceland:16','Portugal:M/16','Portuguese','Sci-Fi','South Korea:15','Spain:18','Sweden:7','Sweden:Btl','UK:12','USA:Unrated'))
AND (n.name ILIKE '%pol%')
AND (kt.kind IN ('movie','tv series'))
AND (rt.role IN ('actress','director','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
