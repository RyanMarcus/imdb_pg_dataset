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
AND (mi1.info IN ('Brazil:14','Finland:S','France:-16','Germany:6','Iceland:L','Japan:G','Netherlands:6','New Zealand:PG','Norway:A','Peru:14','USA:G','USA:Not Rated'))
AND (mi2.info IN ('CAM:Bausch & Lomb Lenses','CAM:Panavision Cameras and Lenses','LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Rank Film Laboratories, Denham, UK','PCS:VistaVision','RAT:1.85 : 1','RAT:2.20 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('costume designer','editor','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
