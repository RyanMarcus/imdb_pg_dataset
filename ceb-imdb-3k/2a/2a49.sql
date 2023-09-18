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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Cantonese','English','French','Japanese','Portuguese','Spanish','Swedish'))
AND (mi2.info in ('CAM:Panasonic AG-HVX200','OFM:Redcode RAW','PFM:35 mm','RAT:1.33 : 1','RAT:1.66 : 1','RAT:1.78 : 1','RAT:1.85 : 1','RAT:16:9 HD','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('editor'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
