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
AND k.keyword IN ('evil-sorcerer','facial-scar','gibson-amphitheatre','just-in-time-delivery','kagan-lake-alaska','lolo-ferrari','marilyn-monroe-dress','mute-servant','number-1237','reference-to-lee-strasberg','reference-to-the-adverts','setting-a-man-on-fire','throwing-a-body-off-a-roof')
AND cn.country_code IN ('[at]','[ch]','[it]','[jp]','[kr]','[ph]','[ru]')
AND ct.kind IN ('distributors','production companies')
AND kt.kind IN ('tv movie','tv series','video game')
AND rt.role IN ('director','writer')
AND n.gender IN ('m')
