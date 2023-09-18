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
AND (it1.id in ('5'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:13+','India:U','Netherlands:12','Netherlands:6','New Zealand:G','UK:15','USA:TV-14'))
AND (mi2.info IN ('CAM:Bausch & Lomb Lenses','LAB:Metrocolor','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor, Hollywood (CA), USA','PCS:Techniscope','PCS:VistaVision','RAT:1.33 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('production designer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
