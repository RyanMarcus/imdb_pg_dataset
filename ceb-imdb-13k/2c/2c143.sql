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
AND (it1.id in ('105'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$1,000,000','$2,000','$25,000','$3,500','$300','$500','$75,000','CAD 10,000','£10,000','€ 100,000','€ 20,000','€ 30,000'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.6520)','(#18.168)','(#2.92)','(#3.45)','(2008-08-23)','Billy Bathgate','Chapter Ten','Dinner for One','Down on the Farm','Earth','Enron: The Smartest Guys in the Room','Funky Monkey','Guys and Dolls','I Am Divine','Its Never Too Late','Jennifer','Offshore','Out of Step','Pigalle','Sexy','Silent Treatment','Storm Warning','Swoon','Syrup','The Glass House','The Scripture of Nature: 1851-1890','The War Within','Under Cover'))
