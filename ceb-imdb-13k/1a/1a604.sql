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
AND mi1.info IN ('Adventure','Comedy','Crime','Documentary','Drama','Family','Sci-Fi','Thriller')
AND mi2.info IN ('Argentina:13','Australia:PG','Finland:K-11','Germany:o.Al.','Iceland:16','Italy:T','Netherlands:AL','South Korea:15','Spain:13','Sweden:11','UK:15','USA:Unrated')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('cinematographer','director')
AND n.gender IN ('f')
AND t.production_year <= 2015
AND 1990 < t.production_year
