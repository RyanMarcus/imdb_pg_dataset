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
AND (mi1.info in ('LAB:DeLuxe','OFM:35 mm','PCS:Spherical','PFM:35 mm','RAT:1.78 : 1','RAT:1.85 : 1','RAT:16:9 HD'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','actress','director','producer'))
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A5362','B6245','B6261','H4236','P5235','P6252','R363','W5165'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)'))
AND (ct.kind in ('distributors'))
