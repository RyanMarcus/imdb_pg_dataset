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
AND (it1.id in ('8'))
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Albania','Brazil','Croatia','Denmark','Georgia','Hungary','Japan','New Zealand','Occupied Palestinian Territory','Palestine','Slovakia','Slovenia','Spain','Ukraine','United Arab Emirates'))
AND (mi2.info IN ('Nigeria:2006','USA:1993','USA:1995','USA:1997','USA:1998','USA:2000','USA:2004','USA:2012','USA:2014','USA:April 2011'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('costume designer','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
