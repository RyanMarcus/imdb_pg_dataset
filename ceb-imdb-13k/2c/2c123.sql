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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Cinephone','De Forest Phonofilm','Dolby Digital','Mono','Silent','Stereo','Vitaphone'))
AND (mi2.info IN ('LAB:Technicolor','LAB:Technicolor, USA','MET:300 m','MET:600 m','OFM:16 mm','PCS:Spherical','PCS:Techniscope','RAT:1.66 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.101)','(#3.8)','(#4.19)','(#4.21)','(#4.29)','Blazing Saddles','David Copperfield','Flying Down to Rio','Inside Job','Nana','Navy Blues','North to Alaska','Pittsburgh','Ramona','Scared Stiff','The Actress','The Message','The Monkeys Paw','The Other Man','The Road Back','The Tell-Tale Heart','The Tiger'))
