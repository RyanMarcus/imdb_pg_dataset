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
AND (it1.id in ('16'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('USA:1996','USA:2001','USA:2002','USA:2003','USA:2005','USA:2011','USA:2014','USA:April 2008','USA:April 2010','USA:August 2012','USA:May 2011','USA:October 2007'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','composer','costume designer','director','editor'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.225)','(#1.3599)','(#1.4664)','(#1.6109)','(#1.824)','(#15.21)','(#4.196)','(#7.160)','(#8.139)','(1999-11-23)','(2002-11-29)','(2004-08-16)','(2006-01-05)','(2007-03-04)','(2010-09-25)','(2012-09-09)','Barnyard','Bedtime','Breaking In','Fahrenheit 9/11','Hoher Besuch','House of Cards','I Dont Think I Can Do This','Irina Palm','Mindstorm','On Trial','Patient Zero','Revenge','Scratch the Surface','Small Town','Soul of Fire','The 73rd Annual Academy Awards','The Cold War','The Graduates','The Path to 9/11','The Texas Chainsaw Massacre: The Beginning','Turnabout','Twos Company','Unha nova vida','Will Princess Areeyah Be Ripped Off Her Freedom to Decide If She Wants to Marry or Not?'))
