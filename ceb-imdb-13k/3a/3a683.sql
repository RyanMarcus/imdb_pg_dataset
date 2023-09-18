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
AND k.keyword IN ('all-girl-baseball-team','communion-service-music','dumb-surgeon','fat-dancer-with-multiple-partners','german-autumn','kathakali','knocking-on-someones-head','military-induction-physical-exam','perfect-attendance','pete-rose-reference','renting-apartment','shooting-a-coin-tossed-in-the-air','time-capsule','versailles-hotel-miami')
AND cn.country_code IN ('[ar]','[au]','[br]','[gr]','[ru]','[sg]')
AND ct.kind IN ('distributors','production companies')
AND kt.kind IN ('movie','tv movie')
AND rt.role IN ('actor','producer')
AND n.gender IN ('f','m')
