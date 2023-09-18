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
AND (mi1.info IN ('Canada:9 September 2005','Finland:2000','Finland:2001','France:18 May 2006','Portugal:February 1993','USA:1 October 2010','USA:10 January 2003','USA:20 October 2005','USA:20 October 2006','USA:2003'))
AND (mi2.info IN ('Canada:14','Canada:14+','Germany:12','Germany:Not Rated','Hungary:16','Iceland:16','Ireland:16','Israel:16','Malaysia:18SG','Netherlands:16','Netherlands:6','South Korea:(Banned)','Taiwan:PG-12'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','miscellaneous crew','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
