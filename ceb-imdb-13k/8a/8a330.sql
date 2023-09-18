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
AND (mi1.info in ('30','60'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actor','producer'))
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('B1626','C6421','C6423','C6424','C6425','C6426','F6525','J5265','R1631','R1636','R2631','R2632','S3152'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Paramount Pictures','Pathé Frères','Universal Pictures','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
