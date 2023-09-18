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
AND (mi1.info in ('Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actress'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('H4236','P5235','P6252'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors'))
