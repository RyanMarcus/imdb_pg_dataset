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
AND (mi1.info in ('English','German','Spanish','Tagalog'))
AND (mi2.info in ('Argentina:18','Finland:S','Germany:18','Philippines:R-18','Singapore:PG13','Spain:18','Sweden:7','Switzerland:16','USA:R'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('cinematographer','production designer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('art-commission','bag-of-sugar','born-again','columbus-circle-manhattan-new-york-city','evolution','failed-kidnapping','fake-chemistry','gay-actor','hvx','killed-in-explosion','loss-of-grandfather','motorsport','nuclear-scientist','pinned-under-a-car','plow-horse','reference-to-reinhard-heydrich','returned-mail','san-francisco-bay-bridge','smoky-mountain-wrestling','vanilla-slice','video-clip','wedding-reception'))
