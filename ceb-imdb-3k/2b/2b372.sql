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
AND (it1.id in ('2'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('CAM:Arriflex Cameras and Lenses','LAB:Laboratoires Éclair, Paris, France','LAB:Technicolor, USA','OFM:HDCAM','OFM:Live','PCS:DV','PCS:DVCAM','PCS:Kinescope','PCS:Redcode RAW','PCS:Shawscope','PFM:DVD-ROM','PFM:Digital','RAT:16:9 HD','RAT:2.20 : 1'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('anal-sex','bare-chested-male','based-on-play','blood','fight','friendship','gay','independent-film','kidnapping','mother-son-relationship','murder','new-york-city','non-fiction','nudity','sequel','sex','singer'))
