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
AND (it1.id IN ('2','5','6'))
AND (it2.id IN ('24'))
AND (mi1.info IN ('70 mm 6-Track','Brazil:16','Canada:PA','Canada:R','Finland:(Banned)','Germany:o.Al.','Iceland:L','Ireland:12A','Ireland:PG','Italy:VM14','New Zealand:PG','Peru:18','Philippines:G','Philippines:R-13','Portugal:M/16','Singapore:PG13','South Korea:12','Spain:7'))
AND (n.name ILIKE '%fr%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','composer','editor','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
