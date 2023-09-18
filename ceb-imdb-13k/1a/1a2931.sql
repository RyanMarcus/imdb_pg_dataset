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
AND (it1.id in ('2'))
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Nigeria:2007','USA:1994','USA:1997','USA:1998','USA:1999','USA:2001','USA:2008','USA:2010','USA:2013','USA:April 2009'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
