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
AND (mi1.info in ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','CBS Studio 50, New York City, New York, USA','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('editor','miscellaneous crew','writer'))
AND (n.gender IS NULL)
AND (n.surname_pcode in ('A645','B4','B5','C36','D12','G62','K52','L15','M252','N16','R362','S5'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('ABS-CBN','American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Granada Television','National Broadcasting Company (NBC)','Warner Bros. Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
