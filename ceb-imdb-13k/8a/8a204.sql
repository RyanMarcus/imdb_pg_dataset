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
AND (mi1.info in ('Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','New York City, New York, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actor','composer','miscellaneous crew'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('C6423','C6426','D1316','D52','F6523','F6526','J2423','J5242','J5245','J5265','K5315','M2453','M6262','Z3625'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('ABS-CBN','British Broadcasting Corporation (BBC)','Granada Television','National Broadcasting Company (NBC)','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
