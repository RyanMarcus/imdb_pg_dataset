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
AND (it1.id in ('1'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('104','116','126','138','36','81','Canada:60','France:90','UK:60','USA:105','USA:43','USA:46','USA:93'))
AND (mi2.info IN ('Adventure','Biography','Crime','Documentary','Family','Fantasy','Game-Show','History','Horror','Music','Mystery','Sci-Fi','Short','Western'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('composer','director','editor','miscellaneous crew','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
