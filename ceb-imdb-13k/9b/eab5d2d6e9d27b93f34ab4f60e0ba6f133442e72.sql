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
AND (it1.id IN ('5','6','8'))
AND (it2.id IN ('19'))
AND (mi1.info IN ('70 mm 6-Track','Brazil:10','Georgia','Greece:K-13','Iceland:14','Ireland:16','Malaysia:(Banned)','Mexico:C','New Zealand:R13','Norway:16','Portugal','Singapore:(Banned)','Sonics-DDP','South Africa:10V','Spain:7','Switzerland:18'))
AND (n.name ILIKE '%ts%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','editor','production designer','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
