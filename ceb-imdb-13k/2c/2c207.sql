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
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia:M','Brazil:16','Canada:R','Germany:6','Portugal:M/6','UK:PG'))
AND (mi2.info IN ('$10,000','$13,000,000','$15,000,000','$17,000,000','$3,000,000','$3,500,000','$4,000,000','$5,000,000','$500,000','$6,000,000','$70,000,000','$75,000,000','$90,000,000'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actor','editor','guest','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.6289)','(#1.7996)','(#3.21)','(#7.88)','(#8.195)','(2002-06-26)','(2005-09-04)','(2009-03-17)','(2010-10-16)','After','American Pie','Anger Management','Compassion','Dead Flowers','El soldadito de plomo','Girls Night','Halloween Havoc','I Love 1990','Jao and Mikay Fall Into a Bad Argument','Krusty Gets Kancelled','Memento Mori','Monument','Scorpio Nights 2','Stomp the Yard 2: Homecoming','The Passenger','The Projectionist','Too Much Information','Transamerican Killer','Victory','We Have Cleared the Tower','What About Me?','WrestleMania 22'))
