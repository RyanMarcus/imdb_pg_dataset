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
AND (it1.id IN ('2'))
AND (mi1.info in ('Black and White','Color'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('B1626','C6426','F6521','F6524','J52','J5265','J5425','R1631','R1635','R1636','R2632','R2635') OR n.name_pcode_nf IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Paramount Pictures','Pathé Frères','Universal Pictures','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
