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
AND (it1.id in ('1'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('10','105','124','57','6','USA:10','USA:107','USA:17','USA:57','USA:83','USA:9','USA:98'))
AND (mi2.info IN ('Argentina','Australia','California, USA','Dallas, Texas, USA','Detroit, Michigan, USA','England, UK','Hollywood, Los Angeles, California, USA','Houston, Texas, USA','Las Vegas, Nevada, USA','Madrid, Spain','Melbourne, Victoria, Australia','Orlando, Florida, USA','Rome, Lazio, Italy','South Africa','Stockholm, Stockholms län, Sweden'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
