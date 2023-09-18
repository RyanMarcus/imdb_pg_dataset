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
AND (mi1.info in ('CAM:Panavision Cameras and Lenses','LAB:Technicolor, Hollywood (CA), USA','PCS:Digital Intermediate','PCS:Kinescope','PCS:Panavision','PFM:35 mm','RAT:1.33 : 1','RAT:16:9 HD'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender in ('m'))
AND (n.surname_pcode in ('B5','B626','C5','D4','H2','K5','L','L2','M2','M62','P62','S415','S5','W42') OR n.surname_pcode IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
