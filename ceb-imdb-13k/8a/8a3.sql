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
AND (it1.id IN ('18'))
AND (mi1.info in ('CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','actress','producer'))
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4163','C6231','C6235','C6421','F6525','J5215','J5216','J5425','M4145','R1632','R1634'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Fox Network','Independent Television (ITV)','Metro-Goldwyn-Mayer (MGM)','Shout! Factory','Sony Pictures Home Entertainment','Universal TV','Warner Bros'))
AND (ct.kind in ('distributors','production companies'))
