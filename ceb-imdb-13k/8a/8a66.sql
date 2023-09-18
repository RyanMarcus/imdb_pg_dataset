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
AND (mi1.info in ('CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 26, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 28A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 5, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 7, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode'))
AND (rt.role in ('actor','actress','miscellaneous crew','producer'))
AND (n.gender in ('f','m'))
AND (n.surname_pcode in ('C632','C64','F65','H43','H5','H625','L25','N2','O6','R16','S34','W425'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('20th Century Fox Television','ABS-CBN','American Broadcasting Company (ABC)','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Granada Television','National Broadcasting Company (NBC)','Warner Bros. Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
