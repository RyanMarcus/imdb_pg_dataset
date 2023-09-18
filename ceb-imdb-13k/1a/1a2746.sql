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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Nigeria:2006','Sweden:January 2010','USA:1991','USA:1992','USA:1994','USA:1997','USA:2004','USA:2013','USA:April 2011','USA:May 2009','USA:October 2009'))
AND (mi2.info IN ('Greece','Japan','New Zealand','Singapore','Sweden','Thailand','Uruguay'))
AND (kt.kind in ('tv movie','video movie'))
AND (rt.role in ('cinematographer','composer','director','producer','production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
