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
AND (it1.id IN ('6'))
AND (mi1.info in ('Mono','Stereo'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actress'))
AND (n.gender in ('f'))
AND (n.surname_pcode in ('B2','B4','B6','B63','C2','C5','G6','J525','L','M62','P62','R3','S23'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors'))
