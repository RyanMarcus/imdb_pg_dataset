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
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium:19 December 2001','France:16 November 2004','Hungary:10 April 2004','South Korea:13 December 2002','South Korea:13 March 1999','Switzerland:25 June 2009','Switzerland:9 January 1998','USA:17 November 2006','USA:5 November 2010','USA:5 September 2001'))
AND (mi2.info IN ('Despite the fact that this was filmed in Super 35, "Filmed in Panavision" is listed in the end credits.','Despite the fact that this was filmed in the standard spherical format, "Filmed in Panavision" is listed in the end credits.','Not screened in advance for critics.'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','costume designer','editor','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
