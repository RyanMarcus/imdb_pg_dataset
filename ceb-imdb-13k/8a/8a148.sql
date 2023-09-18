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
AND (it1.id IN ('1'))
AND (mi1.info in ('60','USA:60'))
AND (kt.kind in ('episode','tv series'))
AND (rt.role in ('actor','actress','director','miscellaneous crew','producer'))
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4163','B1626','B6161','B6563','C6235','F6523','J5162','J5265','K3451','L5632','M2452','P436'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (cn.name in ('American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)'))
AND (ct.kind in ('distributors','production companies'))
