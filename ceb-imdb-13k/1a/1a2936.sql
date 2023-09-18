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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Lenses and Panaflex Cameras by Panavision','CAM:Panasonic AG-HVX200','LAB:DeLuxe, London, UK','LAB:DeLuxe, USA','OFM:HD','OFM:HDCAM','OFM:Super 16'))
AND (mi2.info IN ('Dublin, County Dublin, Ireland','Hamilton, Ontario, Canada','Marina del Rey, California, USA','Netherlands','Oahu, Hawaii, USA','Ren-Mar Studios - 846 N. Cahuenga Blvd., Hollywood, Los Angeles, California, USA','Stage 37, Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','guest'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
