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
AND (it1.id in ('2'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('103','68','Germany:43','USA:17','USA:21','USA:30','USA:5','USA:55','USA:86','USA:95'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.5508)','(#1.6045)','(#1.708)','(#3.18)','(#5.109)','(#6.67)','(1997-12-19)','(1999-02-03)','(1999-05-17)','(2004-05-11)','(2006-05-19)','(2006-11-25)','(2007-04-04)','(2007-11-01)','(2008-02-05)','(2011-10-12)','(2012-05-11)','(2012-12-19)','About Cherry','Blindside','Breaking Up Is Hard to Do','Cant Hardly Wait','D-Day Remembered','Deliver Us from Eva','Guys Choice','Heaven and Earth','Horns','Kickboxer','Lemonade Mouth','Maid in America','Mütter und Töchter','SD Gundam Force','Seattle','Showtime','Stranger in a Strange Land','Swerve','Tattoo','The Collector','The Dancer','The Fluffer','The Graveyard Shift','Treehouse of Horror V','Tsunami Aid: A Concert of Hope','Unaired Pilot'))
