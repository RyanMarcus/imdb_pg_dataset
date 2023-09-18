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
AND (it1.id IN ('7'))
AND (mi1.info in ('OFM:Video','PFM:35 mm','RAT:1.33 : 1','RAT:1.37 : 1'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actress','costume designer','director','miscellaneous crew','writer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.surname_pcode in ('B6','B62','C5','H2','H4','J52','L','M6','R2','S5') OR n.surname_pcode IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (cn.name in ('American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','National Broadcasting Company (NBC)','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
