SELECT t.title, n.name, cn.name, COUNT(*)
FROM title as t,
movie_keyword as mk,
keyword as k,
movie_companies as mc,
company_name as cn,
company_type as ct,
kind_type as kt,
cast_info as ci,
name as n,
role_type as rt
WHERE t.id = mk.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND ci.movie_id = mk.movie_id
AND mk.movie_id = mc.movie_id
AND k.id = mk.keyword_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (t.title ILIKE '%ma%')
AND (n.surname_pcode ILIKE '%c61%')
AND (cn.name ILIKE '%le%')
AND (kt.kind IN ('tv movie','tv series','video game','video movie'))
AND (rt.role IN ('actress','composer','editor','production designer'))
GROUP BY t.title, n.name, cn.name
ORDER BY COUNT(*) DESC
