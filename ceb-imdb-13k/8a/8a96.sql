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
AND (mi1.info in ('English','French'))
AND (kt.kind in ('movie','tv series'))
AND (rt.role in ('actor','actress'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A4163','B6535','C6231','C6421','C6426','J5252','J5262','K6235','M2425','M4145','M6263','R1634','R1636') OR n.name_pcode_nf IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('Fox Network','Independent Television (ITV)','Metro-Goldwyn-Mayer (MGM)','National Broadcasting Company (NBC)','Paramount Pictures','Shout! Factory','Sony Pictures Home Entertainment','Universal Pictures','Universal TV','Warner Bros'))
AND (ct.kind in ('distributors','production companies'))
