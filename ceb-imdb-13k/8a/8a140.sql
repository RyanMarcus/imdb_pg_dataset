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
AND (mi1.info in ('CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A5362','B6262','G6262','H5362','H5435','M2354','M6253','R1632','R5432','W4526'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (cn.name in ('American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
