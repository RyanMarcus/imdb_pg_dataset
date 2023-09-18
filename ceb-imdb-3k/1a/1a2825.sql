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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Despite the fact that this was filmed in Super 35, "Filmed in Panavision" is listed in the end credits.','Last show of the series.','Not screened for critics.','Not screened in advance for critics.','Premiere voted this movie as one of "The 50 Greatest Comedies Of All Time" in 2006.','This film is considered an "Ozploitation" (Australian exploitation) picture.'))
AND (mi2.info IN ('Canada:5 February 2011','France:October 1997','Peru:1989','USA:2008','USA:8 December 2012'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('editor'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
