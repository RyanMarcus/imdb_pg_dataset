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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('OFM:16 mm','RAT:1.78 : 1','RAT:2.35 : 1'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('anal-sex','based-on-novel','based-on-play','cigarette-smoking','death','dog','female-frontal-nudity','flashback','friendship','gun','hardcore','hospital','kidnapping','male-frontal-nudity','murder','non-fiction','number-in-title','police','sequel','singer','singing','surrealism'))
