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
AND mi1.info IN ('Action','Adventure','Animation','Comedy','Drama','Fantasy')
AND mi2.info IN ('Argentina:16','Canada:G','Canada:PG','Germany:6','Germany:o.Al.','New Zealand:R16','Portugal:M/16','Singapore:PG','Spain:T','Switzerland:16','UK:12','UK:15','UK:U')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('miscellaneous crew')
AND n.gender IN ('m')
AND t.production_year <= 2015
AND 1975 < t.production_year
