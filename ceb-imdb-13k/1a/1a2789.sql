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
AND (mi1.info IN ('USA:1 January 2011','USA:1983','USA:1993','USA:20 October 2006','USA:2000','USA:October 2007','USA:September 2011'))
AND (mi2.info IN ('Action','Family','Game-Show','History','Horror','Mystery','News','Reality-TV'))
AND (kt.kind in ('tv movie','video movie'))
AND (rt.role in ('costume designer','director','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
