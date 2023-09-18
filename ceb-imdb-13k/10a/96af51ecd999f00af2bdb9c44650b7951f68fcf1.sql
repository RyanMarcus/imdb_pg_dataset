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
AND (it1.id IN ('4','5'))
AND (mi1.info IN ('Arabic','Brazil:14','Cantonese','Catalan','Danish','Finland:K-12','Finland:K-18','India:U','Italy:T','Malaysia:U','Mexico:B','Netherlands:6','New Zealand:M','New Zealand:R16','Switzerland:14','Tamil','UK:12','UK:A','USA:TV-MA'))
AND (n.name ILIKE '%viv%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','miscellaneous crew','production designer'))
GROUP BY mi1.info, n.name
