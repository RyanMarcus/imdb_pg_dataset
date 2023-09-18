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
AND (mi1.info in ('CAM:Arriflex Cameras','LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:35 mm','PCS:Spherical','PCS:Super 16','PCS:Super 35','PFM:16 mm','PFM:Video','RAT:1.33 : 1','RAT:1.37 : 1','RAT:1.78 : 1 / (high definition)','RAT:2.35 : 1'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','director'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('bare-chested-male','based-on-play','character-name-in-title','dancing','death','doctor','family-relationships','father-son-relationship','female-frontal-nudity','fight','friendship','gay','homosexual','interview','jealousy','sequel','sex','singer','singing'))
