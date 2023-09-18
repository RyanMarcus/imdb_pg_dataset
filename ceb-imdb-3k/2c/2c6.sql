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
AND (mi1.info IN ('Adult','Adventure','Biography','Drama','Family','Game-Show','Horror','Music','Musical','Mystery','News','Reality-TV','Sci-Fi','Thriller','Western'))
AND (mi2.info IN ('Argentina','Belgium','Czech Republic','Indonesia','Mexico','Nigeria'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','composer','guest','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1453)','(#1.332)','(#1.3503)','(#1.3788)','(#1.5288)','(#10.58)','(#13.10)','(#15.21)','(#16.159)','(#2.87)','(#5.24)','(2000-06-23)','(2002-01-04)','(2003-05-16)','(2005-05-15)','(2006-08-27)','Ask the Dust','Austin Powers: The Spy Who Shagged Me','Basquiat','Can You Dig It?','Del 3','Do You See What I See?','Einsichten','Episode Five','Expectations','Homicide','Immortal Beloved','Insidious','Patience','Red, White and a Little Blue','Romeo y Julieta','Running on Empty','Saru gecchu 3','Secret Society','Tess','The Big Bang Theory','The Firm','The Mummy: Tomb of the Dragon Emperor','The Sting'))
