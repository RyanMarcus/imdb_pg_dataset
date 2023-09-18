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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Animation','Biography','Crime','Documentary','Family','History','Musical','News','Sci-Fi','Sport','Thriller','War'))
AND (mi2.info IN ('Bulgaria','Canada','East Germany','Germany','Netherlands','Philippines','Portugal','Taiwan','USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('costume designer','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.14)','(#1.33)','(#1.44)','(#1.53)','(#1.71)','(#1.78)','(#4.24)','(#6.3)','(#7.6)','Beatrice Cenci','Bellbird','Blockade','Born Reckless','Clive of India','Ebb Tide','Fuenteovejuna','Gang War','Hideout','Holiday','Home','Illegal Entry','Kill the Umpire','Like Father, Like Son','Love Me Forever','No Way Out','Parnell','Part 4','Playgirl','Scandal','Start Cheering','Survival','Sången om den eldröda blomman','The Arrangement','The Bohemian Girl','The Cardinal','The Changeling','The Homecoming','The Racket','The Suspect','The Winner','Time Bomb','Waterloo'))
