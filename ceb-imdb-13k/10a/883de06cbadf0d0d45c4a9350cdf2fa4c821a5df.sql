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
AND (mi1.info IN ('Argentina:13','Argentina:16','Germany:o.Al.','Netherlands:AL','Peru:14','Portugal:M/12','Portugal:M/16','South Korea:15','Sweden:7','Switzerland:12','Switzerland:14','Switzerland:7','USA:Not Rated','USA:PG','USA:R','USA:TV-PG','USA:Unrated','West Germany:12','West Germany:16'))
AND (n.name ILIKE '%scha%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','producer','production designer'))
GROUP BY mi1.info, n.name
