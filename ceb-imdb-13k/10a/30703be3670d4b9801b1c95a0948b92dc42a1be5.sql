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
AND (it1.id IN ('4','5','8'))
AND (mi1.info IN ('Albanian','Austria:10','Canada:16+','Czech Republic','Denmark:16','Estonia','Finland:K-10','Finland:K-12/9','Finland:K-14','Iceland:10','Indonesia','Letzebuergesh','Malaysia:18','South Africa:PG','Switzerland:18','Thailand','USA:GP'))
AND (n.name ILIKE '%sch%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('composer','production designer','writer'))
GROUP BY mi1.info, n.name
