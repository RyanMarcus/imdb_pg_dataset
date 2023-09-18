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
AND (it1.id in ('18'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Hamburg, Germany','Los Angeles County Arboretum & Botanic Garden - 301 N. Baldwin Avenue, Arcadia, California, USA','MGM British Studios, Borehamwood, Hertfordshire, England, UK','Manhattan, New York City, New York, USA','Stage 17, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 19, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','OFM:35 mm','PCS:CinemaScope','PCS:Kinescope','PCS:Techniscope','PFM:Video','RAT:4:3'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','miscellaneous crew','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
