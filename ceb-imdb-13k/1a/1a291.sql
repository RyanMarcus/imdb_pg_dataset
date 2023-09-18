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
AND it1.id = '3'
AND it2.id = '2'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Action','Adult','Animation','Family','History','Horror','Reality-TV')
AND mi2.info IN ('Color')
AND kt.kind IN ('tv movie','tv series','video game')
AND rt.role IN ('costume designer')
AND n.gender IN ('f')
AND t.production_year <= 2015
AND 1990 < t.production_year
