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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Action','Adult','Adventure','Animation','Comedy','Documentary','Drama','Family','Horror','News','Reality-TV','Romance','War','Western'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actor','actress','editor','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.10012)','(#1.1622)','(#1.5567)','(#1.773)','(#5.91)','(2000-06-28)','(2001-03-25)','(2004-09-07)','(2004-12-04)','(2006-05-04)','(2007-03-09)','(2007-05-13)','(2011-02-24)','A Real Dilemma','And God Created Woman','Besieged','Bill & Teds Excellent Adventure','Cleaning House','Crackerjack','Death at a Funeral','Fade Out','Fantastic Mr. Fox','Grim','Guess Whos Not Coming to Dinner','Ill Be Seeing You','Interstate 60: Episodes of the Road','Lessons','MTV Video Music Awards 2011','Moses und Aron','Siberia','Skills','Thats Carry On','The Bodyguard','The Hobbit: An Unexpected Journey','The Quiet Ones','The Top Five Finalists Perform','The Unnatural','Wilhelm Tell','Zig Zag'))
