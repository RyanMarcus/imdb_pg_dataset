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
AND (mi1.info IN ('Belgium:KT','Brazil:18','Canada:R','Chile:18','Denmark:15','Finland:K-11','Finland:K-8','Iceland:14','Ireland:16','Mexico:B15','Norway:A','Peru:18','Peru:PT','Philippines:R-13','Philippines:R-18','Singapore:R21','South Korea:All','USA:Unrated'))
AND (n.name ILIKE '%silv%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','miscellaneous crew','producer'))
GROUP BY mi1.info, n.name
