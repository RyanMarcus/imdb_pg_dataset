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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Drama','Fantasy','Horror','Music','Short'))
AND (mi2.info IN ('Argentina:13','Finland:K-18','Germany:12','Iceland:16','Portugal:M/12','Spain:13','UK:A','USA:TV-PG','USA:Unrated','USA:X','West Germany:6'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','guest','miscellaneous crew'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.22)','(#5.26)','(#6.19)','Airport 1975','Carnival','Devils Island','For Better, for Worse','Gold','Golden Girl','Guest in the House','Its in the Air','Madame Bovary','Many Happy Returns','Margie','Never Again','Nightmare','Our Relations','Out of the Night','Part 3','Reap the Wild Wind','Sanctuary','Shakedown','Shoot to Kill','Stormy Weather','The Alibi','The Cardinal','The Gunfighter','The Hunted','The Killers','The Long Goodbye','The Plunderers','The Prize','The Raiders','The Return','The Secret Storm','The Silent Witness','The Spoilers','Unterwegs zu Lenin','World Wide Wrestling'))
