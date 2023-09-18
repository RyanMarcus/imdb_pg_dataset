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
AND t.production_year <= 2015
AND 1925 < t.production_year
AND k.keyword IN ('bathroom-accident','baywalk','bean-ball','building-stage','extraterrestrial-intelligence','genetic-engineering','hat-maker','microfilm-shoved-up-anus','naval-intelligence','reference-to-prince-charles','rival','u.s.-occupation','war-dog','wearing-a-barrel','year-463')
AND cn.country_code IN ('[ae]','[bg]','[cu]','[hr]','[lb]','[my]','[no]')
AND ct.kind IN ('distributors','production companies')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('producer')
AND n.gender IN ('m')
