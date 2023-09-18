SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('4'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Arabic','Czech','Finnish','Hindi','Portuguese'))
AND (mi2.info IN ('CAM:Arriflex Cameras','CAM:Panavision Cameras and Lenses','LAB:Technicolor','LAB:Technicolor, USA','OFM:35 mm','PCS:(anamorphic)','PCS:CinemaScope','PCS:Kinescope','PCS:Techniscope','PFM:16 mm','PFM:35 mm','RAT:1.33 : 1','RAT:1.66 : 1','RAT:1.85 : 1','RAT:2.20 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('editor'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
