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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Chile','France','Malaysia','Portugal','Singapore','Sweden','Taiwan','UK','Venezuela'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('editor','miscellaneous crew','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.1341)','(#1.2012)','(#1.6081)','(#1.76)','(#2.108)','(#5.6)','(#9.100)','(#9.27)','(2001-04-25)','(2001-07-19)','(2005-12-12)','(2008-08-14)','(2009-04-11)','(2010-01-19)','(2010-12-15)','(2011-12-08)','(2012-07-06)','A Day Without a Mexican','Amores de estafa','Bed, Bath and Beyond','Booted','Born Again','Chapter 21','Charlie & Boots','Clean Break','Dad','Dire Straits','Guerillas in the Mist','Happy Hour','Hazaaron Khwaishein Aisi','Keeping Up with the Joneses','Matti','My Big Fat Greek Wedding','Needle in the Hay','Quentin Tarantino/Smashing Pumpkins','SUBWAYStories: Tales from the Underground','Say It Loud','Slip of the Tongue','Space Invaders','Super Inday and the Golden Bibe','Suzuran','The Devil','The Football Factory','The Trainer','The Van','You Changed My Life'))
