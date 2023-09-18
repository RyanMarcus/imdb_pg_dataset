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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Biography','Crime','Documentary','Mystery','News','Reality-TV','Sci-Fi','Sport','Talk-Show','Western'))
AND (mi2.info IN ('Datasat','Dolby','Silent','Stereo','Ultra Stereo'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('composer','director','editor','production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.1995)','(#1.5463)','(#1.5516)','(#1.6173)','(#6.189)','(#6.43)','(#9.44)','(1998-09-11)','(2004-01-25)','(2004-02-07)','(2004-09-25)','(2004-12-17)','(2005-05-23)','(2005-08-27)','(2006-05-06)','A Year and a Day','AmerAsian','Apples','Bratz','BrightStar Care','Chapter Twelve','Cámara negra. Teatro Victoria Eugenia','Die Fremde','Fainaru fantajî XII','Family Affair','Final Grades','Grassroots','Green Dress for Red Carpet','Horsemen','July','King','Lifes a Beach','Money, Money, Money','Mr. Saturday Night','Personal Story/Memorable Year Week','Playing Doctor','Schutzengel','Secret défense','Street Life','Terrible Twos','The Birds and the Bees','The Gift of Life','The Housemates Patience Are Tested to the Max','The People vs. George Lucas','The Thief','Timebomb','Town of Tomorrow','Whacked!','While the Cats Away'))
