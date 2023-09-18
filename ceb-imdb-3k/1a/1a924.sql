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
AND mi1.info IN ('Comedy','Drama','Family','Romance','Thriller','Western')
AND mi2.info IN ('Australia:G','Australia:R','Norway:16','Portugal:M/12','Sweden:15','UK:U','USA:Approved','West Germany:12','West Germany:16')
AND kt.kind IN ('episode')
AND rt.role IN ('miscellaneous crew','writer')
AND n.gender IN ('m')
AND t.production_year <= 1990
AND 1950 < t.production_year
