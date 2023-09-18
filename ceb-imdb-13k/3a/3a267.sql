SELECT COUNT(*) FROM title as t,
movie_keyword as mk, keyword as k,
movie_companies as mc, company_name as cn,
company_type as ct, kind_type as kt,
cast_info as ci, name as n, role_type as rt
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
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('anti-corporate','arm-wound','beaten-up','desire-to-break-out','erotic-art','gill','irresponsible-parent','jumping-from-rooftop-to-rooftop','obsolescence','older-man-older-man-relationship','private-villa','reference-to-jean-paul-gaultier','school-for-models','school-of-the-seven-bells','tree-roots'))
AND (cn.country_code IN ('[cz]','[ddde]','[ee]','[lv]','[ro]','[th]','[za]'))
AND (ct.kind IN ('distributors','production companies'))
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('actor','actress'))
AND (n.gender IN ('f','m'))
