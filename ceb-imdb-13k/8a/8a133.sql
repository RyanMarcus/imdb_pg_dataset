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
AND (mi1.info in ('22','25','60','90','Argentina:30'))
AND (kt.kind in ('episode','tv movie'))
AND (rt.role in ('cinematographer','costume designer','director','miscellaneous crew'))
AND (n.gender IS NULL)
AND (n.surname_pcode in ('B624','D25','J525','L','L2','L52','L532','P62','R2','R52') OR n.surname_pcode IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('ABS-CBN','American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Granada Television','National Broadcasting Company (NBC)','Warner Bros. Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
