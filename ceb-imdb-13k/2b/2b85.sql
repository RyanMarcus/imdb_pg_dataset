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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English','German'))
AND (mi2.info in ('Australia:G','Finland:K-16','Sweden:15','Sweden:Btl','UK:PG','USA:Passed','USA:R','West Germany:12'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('costume designer','writer'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bare-chested-male','based-on-novel','based-on-play','death','doctor','dog','father-son-relationship','female-nudity','gay','homosexual','interview','lesbian','love','non-fiction','revenge','sex','singer','surrealism'))
