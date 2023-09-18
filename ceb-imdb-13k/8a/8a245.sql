SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k,
movie_companies as mc,
company_type as ct,
company_name as cn
WHERE
t.id = ci.movie_id
AND t.id = mc.movie_id
AND t.id = mi1.movie_id
AND t.id = mk.movie_id
AND mc.company_type_id = ct.id
AND mc.company_id = cn.id
AND k.id = mk.keyword_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (it1.id IN ('4'))
AND (mi1.info in ('English'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A4163','B1614','B1626','C6231','C6424','D1325','F6524','H526','J252','J5162','J525','J5252','P3625','R1634') OR n.name_pcode_nf IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('20th Century Fox Television','ABS-CBN','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Granada Television','Warner Bros. Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
