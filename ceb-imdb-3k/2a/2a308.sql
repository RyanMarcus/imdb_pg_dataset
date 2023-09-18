SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('18'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','California, USA','France','Hamburg, Germany','Istanbul, Turkey','London, England, UK','Manhattan, New York City, New York, USA','Melbourne, Victoria, Australia','Montréal, Québec, Canada','Munich, Bavaria, Germany','San Diego, California, USA','Stage 37, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','USA','Washington, District of Columbia, USA'))
AND (mi2.info in ('Color'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer','editor'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
