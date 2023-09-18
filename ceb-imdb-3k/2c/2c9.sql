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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('55','6','86','USA:50','USA:95'))
AND (mi2.info IN ('Action','Biography','Comedy','Documentary','Film-Noir','History','Mystery','Romance','Short','Thriller'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('director','guest','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.72)','(#3.2)','(#3.23)','(#5.4)','(#6.4)','A Place in the Sun','Blind Spot','Brotherly Love','Countdown','Der Raub der Sabinerinnen','Diane','Eyewitness','False Witness','Florian','Fury','Gasparone','Golden Boy','Lilith','Martha','One Foot in Heaven','Perfect Strangers','Reckless','Shine on Harvest Moon','Stingaree','Take Me Out to the Ball Game','The Appointment','The Comeback','The Engagement','The Fanatics','The Feud','The Good Samaritan','The Great Ziegfeld','The Hoodlum Saint','The Raven','The Women','War and Peace','With a Song in My Heart'))
