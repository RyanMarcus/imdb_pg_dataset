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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('OFM:Live','OFM:Video','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1'))
AND (mi2.info in ('25','30','60','87','90','91','94','98'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('cigarette-smoking','death','doctor','gay','gun','hardcore','hospital','lesbian-sex','mother-son-relationship','police','suicide'))
