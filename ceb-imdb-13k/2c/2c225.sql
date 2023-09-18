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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Laboratoires Éclair, Paris, France','LAB:Technicolor, Hollywood (CA), USA','PCS:Techniscope','PCS:VistaVision','PFM:16 mm','PFM:Video','RAT:1.20 : 1','RAT:1.78 : 1','RAT:1.85 : 1','RAT:2.20 : 1','RAT:2.35 : 1'))
AND (mi2.info IN ('Argentina:13','Australia:M','Belgium:KT','Finland:K-12','Finland:K-8','France:-12','France:U','Sweden:11','USA:Approved','USA:R','USA:X'))
AND (kt.kind in ('movie','tv movie','video game'))
AND (rt.role in ('guest','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.37)','(#1.76)','(#4.4)','Branded','Meet Danny Wilson','Sweet Charity','The Black Widow','The Buccaneer','The Coward','The Desert Hawk','The Gunman','The Hunchback of Notre Dame','Too Hot to Handle','Triple Cross'))
