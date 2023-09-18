SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('4'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Albanian','Bulgarian','English','French','German','Italian','Spanish'))
AND (mi2.info in ('Albania','Belgium','Bulgaria','France','Germany','Hong Kong','Netherlands','New Zealand','Philippines','Sweden','Switzerland','Venezuela'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('editor'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('based-on-novel','cigarette-smoking','dancing','death','doctor','dog','female-frontal-nudity','lesbian','marriage','mother-son-relationship','murder','nudity','singer','singing'))
