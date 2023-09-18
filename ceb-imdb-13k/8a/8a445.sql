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
AND (it1.id IN ('8'))
AND (mi1.info in ('UK'))
AND (kt.kind in ('movie','tv movie','tv series'))
AND (rt.role in ('actor','actress'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('B1626','C6231','C6421','D5162','E4213','J52','J5216','J525','J5262','M6263','R1635','R2631','S3152'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Fox Network','Independent Television (ITV)','Metro-Goldwyn-Mayer (MGM)','National Broadcasting Company (NBC)','Paramount Pictures','Shout! Factory','Warner Bros'))
AND (ct.kind in ('distributors','production companies'))
