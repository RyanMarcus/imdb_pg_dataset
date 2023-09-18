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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Animation','Biography','Documentary','Fantasy','Game-Show','History','Horror','Music','Reality-TV','Sci-Fi','Short','Sport','Talk-Show','War'))
AND (mi2.info IN ('Albanian','Arabic','Bengali','Bulgarian','Chinese','Czech','Filipino','Polish','Russian','Slovak','Swedish','Swiss German','Tamil','Turkish','Urdu'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','miscellaneous crew','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1612)','(#2.167)','D-Day Remembered','Engrenage','Europe, Here We Come','Me and the Devil','Mivtsa Yonatan','Monkey Love','Soldier of Fortune','The Firm'))
