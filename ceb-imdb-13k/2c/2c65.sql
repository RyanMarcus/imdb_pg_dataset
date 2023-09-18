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
AND (it1.id in ('5'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:13','Finland:K-3','Finland:K-7','France:-16','Hong Kong:III','Hungary:16','Mexico:B','Netherlands:12','New Zealand:R16','Singapore:M18','Singapore:R(A)','Sweden:15','UK:15','USA:TV-14','USA:TV-PG'))
AND (mi2.info IN ('70 mm 6-Track','DTS-ES','DTS-Stereo','Dolby Digital','Dolby SR','Dolby','Mono','SDDS'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.3684)','(#1.520)','(#1.5624)','(#1.99)','(#16.57)','(#3.130)','(#6.14)','(#6.191)','(#9.23)','(1999-07-14)','(1999-08-12)','(2003-08-11)','(2004-03-23)','(2005-09-13)','(2005-12-16)','(2011-01-29)','(2011-03-12)','1994','A Dick and a Dream or Fight the Honey','Alleged','Alta Definição','Any Given Sunday','Apocalypto','Basquiat','Boys','Casting','East Broadway','Extraordinary Measures','Final Round','Finale: Part I','Fire, Plague, War and Treason','Howard Stern','Into the Light','Life Lessons','Mission to Mars','Mr. Nice','Night Vision','Paco, Slater, Biggel and Divine Accomplish Their Tasks in Marinduque','Pendulum','Salon Deco: Atlanta, GA','Self Defense','Solitary','Telemaratón','The Reunion','There Are Clues That Tells Gino Is a Dasho and That He Could Be Related with Jao','Torasuchii beru: Shopan no yume','Uncross the Stars','Untouchable','Verdades dolorosas','Windtalkers'))
