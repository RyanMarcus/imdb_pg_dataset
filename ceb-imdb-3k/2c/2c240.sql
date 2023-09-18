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
AND (it1.id in ('5'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:14A','Finland:K-12','Finland:K-18','Finland:K-8','Portugal:M/6','UK:A'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actress'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.526)','(#1.738)','(#6.15)','(#6.2)','American Hot Wax','Birdy','Blind Spot','Crash','Eyewitness','Ghost of a Chance','Green Card','I Do, I Do','Killer','Mutiny','Protection','Take Me to Your Leader','The General','The Innocents','The Kid','The Raiders','The Son Also Rises','This Is Your Life','To Be or Not to Be','Trials','Trust'))
