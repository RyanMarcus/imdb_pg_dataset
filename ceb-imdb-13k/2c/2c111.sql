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
AND (it1.id in ('1'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('102','110','124','38','50','75','Argentina:60','Germany:41','Germany:43','USA:10','USA:110','USA:120','USA:23','USA:53'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('cinematographer','composer','production designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.440)','(#1.4670)','(#1.5514)','(#1.6163)','(#1.6296)','(2002-11-07)','(2011-06-14)','(2011-09-11)','(2012-09-11)','Anonymous','Balloon','Calendar Girls','Citizenship','Jonas Brothers: The 3D Concert Experience','Meow','My Amnesia Girl','My Bodyguard','Novogodniy ogonyok 2013','Pat Buchanan','Patterns','Russian Roulette','Susie','Temptation','The Competition Between Gino and Jao Continue','The Counselor'))
