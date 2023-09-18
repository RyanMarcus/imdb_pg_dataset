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
AND (it1.id IN ('2','3','5'))
AND (it2.id IN ('34'))
AND (mi1.info IN ('Belgium:KT','Canada:A','Canada:AA','Denmark:11','Denmark:15','Finland:K-18','France:-12','Hong Kong:IIA','Hungary:16','Iceland:14','Ireland:18','Ireland:PG','Malaysia:18SG','Mexico:B','Norway:16','Philippines:R-13','Portugal:M/18','Singapore:PG13','Sweden:7','West Germany:18'))
AND (n.name ILIKE '%gord%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','miscellaneous crew','producer','production designer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
