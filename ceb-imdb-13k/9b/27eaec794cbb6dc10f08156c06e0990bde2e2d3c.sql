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
AND (it2.id IN ('20'))
AND (mi1.info IN ('Argentina:Unrated','Austria:16','Chile:Y7','DTS-Stereo','France:-18','Greece:K','Iceland:Unrated','Japan:R18+','Mexico:A','New Zealand:(Banned)','Norway:10','Norway:7','Slovakia:12','Sonics-DDP','South Africa:10M','Switzerland:18','Taiwan:GP','Taiwan:R-12','Venezuela:PG-13','West Germany:6'))
AND (n.name ILIKE '%ir%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('costume designer','director','miscellaneous crew','producer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
GROUP BY mi1.info, n.name
