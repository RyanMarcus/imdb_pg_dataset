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
AND it2.id = '5'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Action','Comedy','Crime','Documentary','Drama','Romance')
AND mi2.info IN ('France:U','Germany:18','Philippines:PG-13','Singapore:NC-16','UK:12','USA:PG-13','USA:Unrated')
AND kt.kind IN ('tv movie','tv series','video game')
AND rt.role IN ('editor')
AND n.gender IN ('f','m')
AND t.production_year <= 2015
AND 1990 < t.production_year
