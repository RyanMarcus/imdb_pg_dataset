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
AND (it1.id in ('6'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Mono','Silent','Stereo'))
AND (mi2.info IN ('Australia','Austria','Belgium','Bulgaria','Denmark','Hong Kong','Italy','Japan','Netherlands','Spain','UK','USA','West Germany','Yugoslavia'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','director','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
