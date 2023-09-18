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
AND (it1.id in ('16'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Greece:1987','USA:1976','USA:1980','USA:1981','USA:1982','USA:1983','USA:1984','USA:1985','USA:1986','USA:1987','USA:1988','USA:1990'))
AND (mi2.info IN ('Biography','Comedy','Documentary','Drama','Horror','Music','Mystery','Talk-Show','Thriller','Western'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','actress'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
