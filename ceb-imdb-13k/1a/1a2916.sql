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
AND (it1.id in ('3'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Animation','Comedy','Crime','Documentary','History','Horror','Mystery','Sci-Fi','Short','Sport','Thriller'))
AND (mi2.info IN ('Australia:PG','Brazil:18','Canada:14+','Chile:18','Iceland:L','New Zealand:M','Singapore:R21','Sweden:11','UK:12'))
AND (kt.kind in ('tv movie','video movie'))
AND (rt.role in ('cinematographer','director','guest','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
