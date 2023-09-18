SELECT COUNT(*) FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
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
AND it1.id = '8'
AND it2.id = '4'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Canada','Hungary','India','Italy','Netherlands','Portugal','Taiwan','USA')
AND mi2.info IN ('Dutch','French','Hungarian','Malayalam','Mandarin','Portuguese','Spanish','Telugu')
AND kt.kind IN ('episode','movie','tv movie')
AND rt.role IN ('producer')
AND n.gender IN ('f')
AND t.production_year <= 1975
AND 1875 < t.production_year
