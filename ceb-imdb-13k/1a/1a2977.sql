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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adventure','Animation','Comedy','Fantasy','Film-Noir','Music','Reality-TV','Short','Talk-Show','Thriller','War','Western'))
AND (mi2.info IN ('Nigeria:2005','USA:15 October 2011','USA:1993','USA:January 2010','USA:May 2009'))
AND (kt.kind in ('tv movie','tv series','video movie'))
AND (rt.role in ('actor','cinematographer','composer','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
