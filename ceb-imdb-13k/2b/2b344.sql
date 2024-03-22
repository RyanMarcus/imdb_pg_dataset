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
AND (it1.id in ('3'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Comedy','Crime','Drama','Romance','Thriller'))
AND (mi2.info in ('Australia:M','Australia:R','Belgium:KT','Finland:K-15','Germany:12','Germany:16','Iceland:L','Singapore:M18','Singapore:PG','Sweden:15','UK:15','UK:U','USA:R'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('costume designer','production designer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('bare-breasts','bare-chested-male','based-on-play','dog','female-nudity','gay','lesbian','love','male-nudity','mother-son-relationship','number-in-title','party','police','singer'))