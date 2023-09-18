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
AND (it1.id in ('7'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('OFM:35 mm','PCS:Super 35','PFM:35 mm','RAT:1.85 : 1'))
AND (mi2.info in ('Argentina:13','Australia:M','Australia:PG','France:-12','Germany:12','Germany:16','Germany:18','Sweden:15','UK:18','USA:R'))
AND (kt.kind in ('tv movie','video game'))
AND (rt.role in ('cinematographer','editor'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('bare-chested-male','based-on-novel','blood','cigarette-smoking','dog','female-nudity','fight','flashback','hospital','husband-wife-relationship','male-frontal-nudity','male-nudity','mother-son-relationship','non-fiction','nudity','oral-sex','singer','song','tv-mini-series','violence'))
