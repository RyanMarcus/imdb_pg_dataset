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
AND (it1.id in ('7'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Canon 5D','CAM:Panasonic AG-DVX100','CAM:Red One Camera','LAB:EFILM Digital Laboratories, Hollywood (CA), USA','LAB:FotoKem Laboratory, Burbank (CA), USA','LAB:Laser Pacific Media Corporation, Los Angeles (CA), USA','LAB:Mandarin Laboratory (International) Ltd., Hong Kong','OFM:8 mm','OFM:Super 16','PCS:DVCAM','PCS:HDCAM','PCS:HDV','PFM:70 mm','RAT:1.85 : 1'))
AND (mi2.info IN ('Cantonese','English','French','Hungarian','Italian','Persian','Serbian','Swiss German'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('composer','director','editor','guest'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
