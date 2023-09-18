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
AND (mi1.info IN ('Australia:MA','Belgium:KT','Canada:14','Canada:18','Finland:K-18','Ireland:15A','Netherlands:MG6','Portugal:M/16','Singapore:PG13','South Africa:PG','South Korea:12','Spain:13','UK:AA','UK:E','USA:X'))
AND (mi2.info IN ('Action','Adult','Animation','Biography','Drama','Game-Show','Music','Musical','Mystery','Reality-TV','Sci-Fi','Thriller','War'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','editor','production designer','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
