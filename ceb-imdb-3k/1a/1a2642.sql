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
AND (mi1.info IN ('Australia:1984','USA:1998','USA:2004','USA:2005','USA:2011','USA:2012','USA:2014','USA:April 2008','USA:August 2010','USA:June 2009','USA:June 2010','USA:May 2009'))
AND (mi2.info IN ('Bulgaria','Israel','Italy','Pakistan','Poland','Romania','Singapore','South Korea'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
