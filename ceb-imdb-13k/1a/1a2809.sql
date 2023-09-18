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
AND (mi1.info IN ('CAM:Arriflex Cameras','LAB:DeLuxe, USA','LAB:Tecnostampa, Roma, Italy','OFM:Live','PCS:SuperScope','PFM:16 mm','RAT:1.33 : 1','RAT:1.66 : 1'))
AND (mi2.info IN ('USA:1954','USA:1955','USA:1956','USA:1957','USA:1959','USA:1960'))
AND (kt.kind in ('tv series','video game'))
AND (rt.role in ('actor','cinematographer','miscellaneous crew','production designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
