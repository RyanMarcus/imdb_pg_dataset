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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia:PG','Australia:R','Belgium:KT','Finland:(Banned)','France:-12','France:-16','Germany:BPjM Restricted','Netherlands:18','Norway:18','South Korea:15','South Korea:All','UK:X','USA:Not Rated','USA:TV-G','West Germany:o.Al.'))
AND (mi2.info IN ('Biography','Crime','Fantasy','Musical','Sci-Fi'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
