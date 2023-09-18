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
AND (mi1.info IN ('CAM:Arricam LT, Zeiss Master Prime Lenses','CAM:Arricam ST, Zeiss Ultra Prime and Angenieux Optimo Lenses','CAM:Clairmont Camera','CAM:Moviecam Cameras','LAB:ARRI Film & TV, München, Germany','LAB:Framestore CFC, London, UK','LAB:Laboratoires LTC, St. Cloud, France','LAB:Laboratoires Éclair, Paris, France','LAB:Technicolor, UK','PCS:(anamorphic)','PCS:Digital 3-D','PCS:Digital Betacam','PFM:CD-ROM','PFM:Digital','PFM:Video'))
AND (mi2.info IN ('Belgium:KT','Canada:16+','France:U','Iceland:12','Iceland:14','India:UA','Peru:18','Portugal:M/4','UK:PG'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
