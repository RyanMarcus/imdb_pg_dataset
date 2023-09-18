SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM title as t,
movie_companies as mc,
company_name as cn,
company_type as ct,
kind_type as kt,
cast_info as ci,
name as n,
role_type as rt,
movie_info as mi1,
info_type as it
WHERE t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.movie_id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info_type_id = it.id
AND (kt.kind ILIKE '%m%')
AND (rt.role IN ('actress','cinematographer','composer','director','guest','miscellaneous crew','producer','production designer','writer'))
AND (t.production_year <= 1945)
AND (t.production_year >= 1875)
AND (it.id IN ('4'))
AND (mi1.info ILIKE '%e%')
AND (cn.name ILIKE '%re%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
