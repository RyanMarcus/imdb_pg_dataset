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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Chicago, Illinois, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Las Vegas, Nevada, USA','Madrid, Spain','Munich, Bavaria, Germany','Philippines','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Rome, Lazio, Italy','Stage 17, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 18, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Toronto, Ontario, Canada','Vienna, Austria'))
AND (mi2.info IN ('Australia','Czechoslovakia','Denmark','Finland','India','Philippines','Soviet Union','Sweden','UK'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','guest'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
