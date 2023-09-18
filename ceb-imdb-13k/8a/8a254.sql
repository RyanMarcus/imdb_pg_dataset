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
AND (mi1.info in ('Australia:G','Australia:M','Finland:K-16','USA:TV-14','USA:TV-PG'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','director'))
AND (n.gender in ('m'))
AND (n.surname_pcode in ('A436','B24','B635','C64','D2','E152','F2','H52','H56','J25','M245','M52','P4','S363','W426'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (cn.name in ('American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors','production companies'))
