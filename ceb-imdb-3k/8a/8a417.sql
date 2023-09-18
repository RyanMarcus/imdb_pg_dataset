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
AND (mi1.info in ('CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','New York City, New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actor','actress','producer'))
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('C6231','C6425','E4213','F6525','J5215','J5252','R1632','R2631','R2632') OR n.name_pcode_nf IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)'))
AND (ct.kind in ('distributors'))
