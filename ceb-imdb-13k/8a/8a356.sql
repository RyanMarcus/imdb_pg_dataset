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
AND (mi1.info in ('Comedy'))
AND (kt.kind in ('movie','tv movie'))
AND (rt.role in ('actor','actress'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A4163','A4252','B6161','C6235','C6421','J52','J5216','J5262','K3451','M2416','P3624','R1634'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (cn.name in ('Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors'))