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
AND (mi1.info in ('CAM:Panavision Cameras and Lenses','LAB:DeLuxe','LAB:Technicolor','LAB:Technicolor, Hollywood (CA), USA','OFM:35 mm','PCS:Panavision','PCS:Spherical','PCS:Super 35','PFM:35 mm','RAT:1.33 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','actress'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_cf in ('B6532','B6535','C6252','D5252','J5252','L5352','M6253','P6252','S5325','W4252','W4262','W4523','W4526'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('20th Century Fox Television','ABS-CBN','American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Granada Television','National Broadcasting Company (NBC)','Warner Bros. Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
