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
AND (it1.id in ('8'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria','Canada','Denmark','Finland','France','Israel','Netherlands','Norway','Poland','Spain','Sweden','West Germany','Yugoslavia'))
AND (mi2.info IN ('Argentina:Atp','Australia:PG','Canada:PG','Canada:R','Finland:K-18','India:Unrated','Netherlands:12','Netherlands:AL','Singapore:PG','South Korea:15','Spain:T','Sweden:11','UK:18','USA:X'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','director','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.245)','(#1.390)','(#1.461)','(#1.61)','(#1.843)','(#1.85)','(#2.32)','(#3.11)','(#3.52)','(#7.22)','A Day in the Life','A Matter of Principle','A Room with a View','Annie Hall','Astonished','Billy the Kid','Blazing Saddles','Brushfire','Buddies','Casino Royale','Crack-Up','D.O.A.','Das Jubiläum','Deutschland im Herbst','Domino','Duel','First Night','Grand Theft Auto','Impulse','It Couldnt Happen Here','Kdyby tisíc klarinetu','My Blue Heaven','New Faces','Night of 100 Stars III','North to Alaska','Samurai','Seishun to wa nanda','The 37th Annual Emmy Awards','The Avenging Angel','The Deputy','The Disappearance','The Earth Day Special','The Strike','The Vote','Thuiskomst'))
