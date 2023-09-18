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
AND (it1.id in ('8'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('East Germany','France','India','Iran','Japan','Netherlands','Portugal','Romania','Soviet Union','Spain','Taiwan','UK','USA','West Germany'))
AND (mi2.info IN ('Arabic','Bengali','Cantonese','Danish','German','Greek','Hindi','Hungarian','Malayalam','Mandarin','Polish','Spanish','Tamil','Turkish'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','composer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#2.48)','Anchors Aweigh','Bad Boy','Der müde Theodor','Destry Rides Again','Geronimo','Hello, Dolly!','Huckleberry Finn','Maya Bazaar','Million Dollar Baby','Nob Hill','Only Yesterday','Out of the Blue','Pinocchio','Seven Sinners','Sister Kenny','Stranded','The Awful Truth','The Clown','The Picnic','The Return','The Silent Witness','The Substitute','The Visitor'))
