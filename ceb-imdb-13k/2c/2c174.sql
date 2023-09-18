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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','DTS','Dolby Digital','Dolby Stereo','Dolby','Mono','Ultra Stereo'))
AND (mi2.info IN ('Australia:G','Australia:M','Finland:K-8','Germany:12','Iceland:12','Netherlands:AL','UK:X','USA:TV-G'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('costume designer','editor','miscellaneous crew','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('Amazon Women on the Moon','Body Slam','Die Entführung','Earthquake','Executive Action','Honor Bound','Man and Boy','Robbery','Supergirl','The Critic','The Incident','Total Recall'))
