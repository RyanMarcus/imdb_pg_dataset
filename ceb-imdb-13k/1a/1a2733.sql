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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adventure','Documentary','Family','Horror','Mystery','Sci-Fi','Thriller'))
AND (mi2.info IN ('Australia','Beverly Hills, California, USA','Brisbane, Queensland, Australia','Budapest, Hungary','Culver City, California, USA','Filmistan Studios, Mumbai, Maharashtra, India','Orange, California, USA','Philippines','Portland, Oregon, USA','Salt Lake City, Utah, USA','Savannah, Georgia, USA','Sofia, Bulgaria','St. Petersburg, Russia','Tampa, Florida, USA','Van Nuys, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie','tv series','video movie'))
AND (rt.role in ('actor','director'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
