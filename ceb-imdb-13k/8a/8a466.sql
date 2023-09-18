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
AND (it1.id IN ('1'))
AND (mi1.info in ('60'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actor','actress','director','miscellaneous crew','producer','writer'))
AND (n.gender in ('f','m'))
AND (n.surname_pcode in ('B65','C5','D25','F652','L','M6','R2','S532') OR n.surname_pcode IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (cn.name in ('ABS-CBN','American Broadcasting Company (ABC)'))
AND (ct.kind in ('distributors','production companies'))
