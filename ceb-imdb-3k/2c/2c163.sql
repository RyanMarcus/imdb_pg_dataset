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
AND (it1.id in ('18'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina','Brazil','Cape Town, Western Cape, South Africa','Florida, USA','Hamilton, Ontario, Canada','Los Angeles, California, USA','Minneapolis, Minnesota, USA','Morocco','Oahu, Hawaii, USA','Phoenix, Arizona, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Winnipeg, Manitoba, Canada'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','video game'))
AND (rt.role in ('director'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1450)','(#1.3690)','(#1.5482)','(#1.6256)','(#13.34)','(#2.109)','(#4.52)','(#9.62)','(1996-01-09)','(2000-12-26)','(2004-01-01)','(2006-11-24)','1996','A Little Help from My Friends','A New World','Arrivals','Combustion','Doble vida','Emirates Melbourne Cup Day','Globos de Ouro 2001','Is Reign Gods Sign for Abel to Abandon His Mission?','Leah','Lets Go to Prison','Maidez','Man in the Mirror: The Michael Jackson Story','Manifest Destiny','Memoria','Michael Jackson: 30th Anniversary Celebration','Much Ado About Something','No Mo Nicknames','Playground','Pressure Drop','Road to the Crown: Binibining Pilipinas Primer','Same Time Next Year','Seven Pounds','Swan Lake','Take Me with You','That Old Feeling','The Final Destination','The Marchioness Disaster','Three Kings','Thuiskomst','Witness to the Mob','You Cant Do That on Television'))
