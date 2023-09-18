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
AND (mi1.info IN ('AGA Sound System','Dolby SR','Dolby','Silent','Stereo','Ultra Stereo'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Technicolor','OFM:16 mm','OFM:Video','PCS:(anamorphic)','PCS:Panavision','PCS:Spherical','PFM:16 mm','PFM:35 mm','PFM:Video','RAT:2.20 : 1','RAT:2.35 : 1','RAT:4:3'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('cinematographer','composer','producer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
