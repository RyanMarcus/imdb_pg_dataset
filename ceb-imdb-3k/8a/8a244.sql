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
AND (mi1.info in ('OFM:35 mm','OFM:Live','OFM:Video','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1','RAT:1.37 : 1','RAT:1.78 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','director','producer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A5362','B6245','B6261','B6526','D1232','J5252','M6352','O4252','P6252','R2632','R363','S3152','S5362','W5165'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (cn.name in ('British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)','Warner Home Video'))
AND (ct.kind in ('distributors'))
