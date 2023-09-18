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
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (k.keyword IN ('amritsar-massacre','babasaheb-ambedkar','bannockburn','brazil-football','celebrity-caricature','driving-in-wrong-direction','love-with-a-criminal','obituary','port-chicago-california','sand-lizard','wave-length','whistle-stop'))
AND (cn.country_code IN ('[ca]','[jp]','[kr]','[us]'))
AND (ct.kind IN ('distributors','production companies'))
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('costume designer','director'))
AND (n.gender IN ('f'))
