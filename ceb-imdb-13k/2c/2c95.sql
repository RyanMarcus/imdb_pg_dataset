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
AND (it1.id in ('6'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('DTS','DTS-ES','DTS-Stereo','Dolby Digital','Dolby','Stereo'))
AND (mi2.info IN ('Action','Adventure','Biography','Comedy','Crime','Game-Show','History','Horror','Music','Musical','Sci-Fi','Thriller','Western'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('composer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1396)','(#1.830)','(#16.48)','(#4.50)','(1996-05-08)','(2012-10-12)','2/2','Ace Meets with a Potential Investor','Final Destination','New World Order','No Direction Home','Offshore','Rollerball','The Guardian','The Hooligan Factory'))
