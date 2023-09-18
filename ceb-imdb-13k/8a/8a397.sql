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
AND (it1.id IN ('3'))
AND (mi1.info in ('Comedy','Documentary','Drama','Family'))
AND (kt.kind in ('episode','tv movie','tv series'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A3654','B4353','B6156','D2362','D4626','F6532','L1561','L5326','M5323','R2461','S5236'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('20th Century Fox Television','ABS-CBN','American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Granada Television'))
AND (ct.kind in ('distributors','production companies'))
