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
AND (mi1.info in ('UK','USA'))
AND (kt.kind in ('episode','tv series'))
AND (rt.role in ('composer','editor','miscellaneous crew'))
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A1431','A5242','J242','J5245','J5352','K5315','M6153','M6323','N5253','R5414','R5636','S5152','Z3625'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('20th Century Fox Television','ABS-CBN','British Broadcasting Corporation (BBC)','Granada Television','National Broadcasting Company (NBC)','Warner Bros. Television'))
AND (ct.kind in ('distributors','production companies'))
