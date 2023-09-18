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
AND (mi1.info IN ('6-Track Stereo','70 mm 6-Track','DTS-ES','DTS-Stereo','Datasat','Dolby Digital EX','Dolby Digital','Dolby SR','Dolby','SDDS','Silent','Stereo','Ultra Stereo'))
AND (mi2.info IN ('CAM:Panasonic AG-DVX100','CAM:Panavision Panaflex Platinum, Panavision Primo Lenses','LAB:DeLuxe, Hollywood (CA), USA','LAB:DuArt Film Laboratories Inc., New York, USA','LAB:EFILM Digital Laboratories, Hollywood (CA), USA','LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:Digital','PCS:Digital Intermediate','PFM:16 mm','PFM:DVD-ROM','RAT:1.85 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game'))
AND (rt.role in ('actor','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
