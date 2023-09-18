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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Animation','Crime','Family','Film-Noir','Musical','Mystery','News','Romance','Talk-Show'))
AND (mi2.info IN ('Argentina:18','Denmark:11','Hong Kong:IIA','Hungary:14','New Zealand:M','New Zealand:R16','Sweden:11','Sweden:Btl','Switzerland:12','UK:PG','UK:U','USA:G'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1012)','(#1.5375)','(#1.565)','(#1.814)','(#1.822)','(#14.60)','(#15.93)','(#4.54)','(#5.3)','(#6.167)','(#6.62)','(2002-01-29)','(2002-07-04)','(2005-07-14)','(2009-02-04)','1995 NFL Draft','Biohazard 5','Blowing Smoke','Death Penalty','Die Geisel','Fahrerflucht','Free Agent','Go with the Flow','Grand Finals: Results Night','Happy Trails','Hour 3','How the Finch Stole Christmas','InAlienable','Jessie','Jo Is Having Problems','La belle Hélène','Mind Games','Most','My Way','Nero','Punto y aparte','The Black Box','The Disciple','The Five-Year Engagement','The Mourning After','Trautes Heim','Travel Reservations','Under Siege','Under the Rainbow','Vengeance','Viva'))
