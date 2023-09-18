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
AND (k.keyword IN ('based-on-novel','female-frontal-nudity','flashback','gay','lesbian-sex','love','marriage','mother-daughter-relationship','one-word-title','party','singing','song'))
AND (cn.country_code IN ('[ar]','[be]','[ca]','[ch]','[es]','[fr]','[tr]','[us]'))
AND (ct.kind IN ('distributors','production companies'))
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('composer','writer'))
AND (n.gender IN ('m'))
