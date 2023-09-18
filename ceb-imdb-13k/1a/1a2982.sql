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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arriflex 535B','CAM:Arriflex Cameras and Lenses','CAM:Clairmont Cameras and Lenses','LAB:Cinecolor S.A., Buenos Aires, Argentina','LAB:DeLuxe, New York (NY), USA','LAB:John E. Allen Associates, USA','LAB:Laboratoires GTC, Paris, France','LAB:Madrid Film S.A., Madrid, Spain','LAB:Technicolor, Madrid, Spain','LAB:Technicolor, Toronto, Canada','OFM:SxS Pro','OFM:Video','PCS:3-D','PCS:CinemaScope','PCS:Spherical'))
AND (mi2.info IN ('Belgium:2011','Brazil:23 October 2009','Brazil:25 September 2009','France:17 May 2007','USA:2003','USA:2004','USA:2005','USA:2010','USA:April 2008'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('cinematographer','guest'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
