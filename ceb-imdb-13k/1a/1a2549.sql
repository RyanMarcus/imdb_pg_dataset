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
AND (mi1.info IN ('Belgium:2011','Brazil:6 October 2011','Germany:10 February 2007','Germany:7 February 2008','USA:2010','USA:8 October 2010','USA:October 2006'))
AND (mi2.info IN ('CAM:Arricam LT, Zeiss Ultra Prime Lenses','CAM:Arriflex 435, Cooke S4 and Angenieux Optimo Lenses','CAM:Panavision Panaflex Platinum, Panavision Primo and C-Series Lenses','LAB:Cineworks Digital Studios, Miami (FL), USA','LAB:Monaco Film Laboratories, San Francisco (CA), USA','LAB:Synchro Film, Austria','MET:3150 m','OFM:Digital','RAT:4:3'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('director','editor','guest','producer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
