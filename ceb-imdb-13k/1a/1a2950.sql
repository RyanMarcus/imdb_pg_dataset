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
AND (it1.id in ('18'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Budapest, Hungary','Canada','France','Melbourne, Victoria, Australia','Mumbai, Maharashtra, India','Philadelphia, Pennsylvania, USA','Phoenix, Arizona, USA','Stage 26, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Tucson, Arizona, USA'))
AND (mi2.info IN ('112','121','44','85','USA:15'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','costume designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
