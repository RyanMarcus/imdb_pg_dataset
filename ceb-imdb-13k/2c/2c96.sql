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
AND (it1.id in ('6'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Silent','Stereo'))
AND (mi2.info IN ('CBS Studio 50, New York City, New York, USA','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Mexico','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','editor','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#5.18)','(#6.23)','A Dolls House','A beszélö köntös','Dead or Alive','Der Feldherrnhügel','Der Unfall','Fall Guy','Illegal Entry','Its a Wonderful World','Its in the Air','Judith','Rocambole','The Connection','The King of Kings'))
