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
AND (it2.id IN ('29'))
AND (mi1.info IN ('Austria:12','Belgium:16','Canada:14+','Czech Republic:U','Denmark:16','Denmark:7','Finland:K-8/5','Iceland:(Banned)','Indonesia:Dewasa','Ireland:12','Malaysia:(Banned)','New Zealand:(Banned)','New Zealand:R15','Norway:(Banned)','Poland:18','Singapore:(Banned)','South Africa:13L','Spain:15','West Germany:(Banned)'))
AND (n.name ILIKE '%ca%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('editor','production designer','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
