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
AND (it1.id in ('6'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','DTS-ES','DTS-Stereo','Datasat','Dolby Digital EX','Dolby Digital','Dolby Stereo','SDDS','Silent','Sonics-DDP','Ultra Stereo'))
AND (mi2.info IN ('CAM:Arriflex Cameras','CAM:Panasonic AG-DVX100','LAB:FotoKem Laboratory, Burbank (CA), USA','PCS:Panavision','PFM:16 mm','PFM:Digital','RAT:1.66 : 1','RAT:1.78 : 1','RAT:16:9 HD'))
AND (kt.kind in ('movie','tv series','video movie'))
AND (rt.role in ('cinematographer','editor','miscellaneous crew','producer','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
