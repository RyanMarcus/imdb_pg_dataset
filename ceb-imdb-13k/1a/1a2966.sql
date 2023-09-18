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
AND (it1.id in ('17'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Despite the fact that this was filmed in Super 35, "Filmed in Panavision" is listed in the end credits.','Despite the fact that this was filmed in the standard spherical format, "Filmed in Panavision" is listed in the end credits.','Premiere voted this movie as one of "The 25 Most Dangerous Movies".','Premiere voted this movie as one of "The 50 Greatest Comedies Of All Time" in 2006.'))
AND (mi2.info IN ('Canada:G','Denmark:A','Hungary:18','Malaysia:18SX','New Zealand:PG','Peru:14','South Africa:16LV','Spain:13'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('costume designer','editor','miscellaneous crew','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
