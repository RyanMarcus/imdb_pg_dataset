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
AND (mi1.info in ('English','Filipino','French','German','Portuguese'))
AND (mi2.info in ('Argentina:13','Finland:K-16','New Zealand:PG','Norway:11','Philippines:R-18','Portugal:M/12','UK:12A','UK:X','USA:E','USA:R'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('editor'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('blouse-ripped-open','burying-a-dead-bird','drug-reference','endowment','physics-teacher','reference-to-deng-xiaoping','reference-to-robin-williams','reference-to-vincent-price','runaway-stagecoach','sealed-record','seiniger'))
