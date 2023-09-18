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
AND (mi1.info in ('Australia:G','Canada:14A','Canada:G','France:U','Germany:16','Iceland:16','Netherlands:12','South Korea:15','USA:Passed'))
AND (kt.kind in ('movie'))
AND (rt.role in ('actor','director','miscellaneous crew'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A4361','B6525','B6526','J5252','M2354','M6262','S3152','T5125'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Metro-Goldwyn-Mayer (MGM)','Paramount Pictures','Pathé Frères','Universal Pictures','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
