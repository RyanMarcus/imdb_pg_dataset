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
AND (mi1.info IN ('Australia:M','Canada:13+','Canada:18A','Chile:14','Finland:K-12','Germany:16','Italy:T','Malaysia:U','New Zealand:R16','Philippines:G','Philippines:PG-13','Portugal:M/12','Singapore:PG','Spain:18','Sweden:11','USA:Not Rated','USA:TV-14'))
AND (n.name ILIKE '%bon%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','producer','production designer'))
GROUP BY mi1.info, n.name
