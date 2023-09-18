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
AND 1975 < t.production_year
AND k.keyword IN ('city-folklore','corpse-with-eyes-open','countdown-timer','downsizing','female-sex-slave','girlfriend-tells-boyfriend-his-penis-is-too-small','ideologist','megaride-italy','muscular','new-london-connecticut','queen-anne','soiferman','strapped-to-table','sympathetic-police-officer','trebia-river')
AND cn.country_code IN ('[al]','[cn]','[cu]','[ee]','[pa]','[th]','[tr]','[xyu]')
AND ct.kind IN ('distributors','production companies')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('costume designer')
AND n.gender IN ('f')
