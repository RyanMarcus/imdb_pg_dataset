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
AND (it1.id in ('4'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Czech','Dutch','English','Filipino','Finnish','French','Latin','Mandarin','Polish','Spanish','Swedish','Tagalog'))
AND (mi2.info IN ('CBS Studio 50, New York City, New York, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA'))
AND (kt.kind in ('movie','tv movie','video game'))
AND (rt.role in ('writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.78)','Exposed','Johnny Belinda','Linda','Love Letters','Safari','Somerset','Take Me Out to the Ball Game','Target','The Alibi','The Blue Bird','The Replacement','The Silver Chalice','The Texas Rangers','The Threat','Welcome Stranger'))
