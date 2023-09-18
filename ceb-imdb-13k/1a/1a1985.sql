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
AND mi1.info IN ('Argentina','Canada','Greece','Japan','Mexico','Philippines','South Korea','West Germany','Yugoslavia')
AND mi2.info IN ('English','Filipino','German','Greek','Japanese','Korean','Serbo-Croatian','Spanish','Tagalog')
AND kt.kind IN ('tv series','video game')
AND rt.role IN ('cinematographer')
AND n.gender IN ('f')
AND t.production_year <= 1975
AND 1875 < t.production_year
