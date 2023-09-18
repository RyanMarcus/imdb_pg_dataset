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
AND (it1.id IN ('3','5'))
AND (it2.id IN ('36'))
AND (mi1.info IN ('Adventure','Drama','Finland:K-11','Germany:6','Italy:T','Mystery','Peru:14','Portugal:M/16','Romance','Sci-Fi','South Korea:15','South Korea:18','Spain:T','Sweden:15','Switzerland:7','UK:12A','UK:PG'))
AND (n.name ILIKE '%dun%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
