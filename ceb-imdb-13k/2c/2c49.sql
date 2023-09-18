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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Silent','Stereo'))
AND (mi2.info IN ('20','25','60','65','73','75','81','87','89','9','95','USA:30','USA:60'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.91)','(#6.13)','(#7.14)','Dobrý voják Svejk','Fear','Juha','Show Business','Something to Live For','The Grapes of Wrath','The Red Badge of Courage','The Showdown'))
