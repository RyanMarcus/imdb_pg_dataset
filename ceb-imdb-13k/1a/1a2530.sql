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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('USA:1994','USA:1995','USA:2001','USA:2002','USA:2004','USA:2006','USA:August 2010','USA:August 2011','USA:October 2007'))
AND (mi2.info IN ('110','119','27','40','53','69','84','UK:120','USA:101','USA:109','USA:12','USA:3','USA:70'))
AND (kt.kind in ('episode','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','costume designer','producer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
