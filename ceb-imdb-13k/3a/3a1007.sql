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
AND t.production_year <= 1975
AND 1925 < t.production_year
AND k.keyword IN ('anal-sex','bare-breasts','based-on-novel','death','dog','female-frontal-nudity','homosexual','marriage','mother-son-relationship','nudity','sequel','song')
AND cn.country_code IN ('[lv]','[sg]')
AND ct.kind IN ('production companies')
AND kt.kind IN ('episode','movie','tv movie')
AND rt.role IN ('actress','composer')
AND n.gender IN ('f','m')
