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
AND (it1.id in ('16'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Brazil:17 October 2008','Brazil:26 September 2008','Germany:8 February 2007','Germany:8 February 2008','Germany:9 February 2007','USA:10 November 2006','USA:10 October 2008','USA:2010','USA:January 2010'))
AND (mi2.info IN ('CAM:Arriflex 535','CAM:Panaflex Cameras and Lenses by Panavision','CAM:Panavision Genesis HD Camera, Panavision Primo Lenses','CAM:Panavision Panaflex Millennium, Panavision Primo Lenses','CAM:Panavision Panastar, Panavision Primo Lenses','CAM:Thomson VIPER FilmStream Camera','LAB:Cinecolor S.A., Buenos Aires, Argentina','LAB:DeLuxe, London, UK','LAB:Finnlab Oy, Helsinki, Finland','MET:2850 m','OFM:Digital','PCS:3-D','PCS:DV','PCS:VistaVision'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','costume designer','miscellaneous crew','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
