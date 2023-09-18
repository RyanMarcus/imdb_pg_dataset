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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Brazil:22 October 2010','Canada:6 September 2003','Finland:2001','France:11 May 2005','France:12 May 2005','France:17 May 2007','Germany:10 February 2007','USA:10 June 2005','USA:16 April 2010','USA:18 January 2008','USA:19 October 2007','USA:28 October 2005','USA:November 2009'))
AND (mi2.info IN ('Argentina:18','Canada:16+','Canada:F','Denmark:7','Finland:K-8/5','Germany:6','New Zealand:G','Switzerland:14','Switzerland:7'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('miscellaneous crew','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
