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
AND (it1.id IN ('5'))
AND (mi1.info in ('Argentina:13','Canada:PG','France:U','Germany:12','Iceland:L','Netherlands:12','Portugal:M/12','Sweden:15','UK:PG','UK:U','USA:PG','USA:R'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','director','producer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A5362','B4525','B6245','B6261','D1232','J5252','O4252','R1632','S3152','W5165'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (cn.name in ('British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
