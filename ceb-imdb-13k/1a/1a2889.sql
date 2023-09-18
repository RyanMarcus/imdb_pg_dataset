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
AND (it1.id in ('3'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Family','Horror','Music','News','Sport','War','Western'))
AND (mi2.info IN ('CAM:Arriflex Cameras and Lenses','CAM:Canon XH-A1','CAM:Panavision Camera and Lenses','CAM:Red One Camera','LAB:EFILM Digital Laboratories, Hollywood (CA), USA','LAB:FotoKem Laboratory, Burbank (CA), USA','LAB:Rank Film Laboratories, Denham, UK','OFM:65 mm','PCS:Digital Video','PCS:HDV','PCS:Redcode RAW','PFM:CD-ROM','PFM:Video','RAT:1.37 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('producer','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
