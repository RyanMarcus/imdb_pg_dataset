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
AND (mi1.info IN ('Adventure','Comedy','Crime','Drama','Family','History','Horror','Music','Mystery','News','Short'))
AND (mi2.info IN ('Barcelona, Cataluña, Spain','Chicago, Illinois, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','London, England, UK','Mexico City, Distrito Federal, Mexico','New York City, New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Rome, Lazio, Italy'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','director','miscellaneous crew'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
