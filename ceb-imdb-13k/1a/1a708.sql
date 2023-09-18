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
AND mi1.info IN ('Action','Comedy','Crime','Documentary','Drama','Family','Fantasy','Musical','Short','Thriller')
AND mi2.info IN ('Australia:G','Australia:PG','Australia:R','Brazil:Livre','Germany:12','Italy:VM14','Netherlands:16','Norway:16','Singapore:M18','Singapore:R21','UK:12A','USA:Unrated','West Germany:16','West Germany:6')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('editor')
AND n.gender IN ('f')
AND t.production_year <= 2015
AND 1925 < t.production_year
