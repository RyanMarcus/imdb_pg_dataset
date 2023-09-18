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
AND (mi1.info IN ('Crime','Drama','Romance','War','Western'))
AND (mi2.info IN ('Argentina:13','Argentina:18','Australia:R','Iceland:L','South Korea:All','UK:18','USA:TV-G','USA:X'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.40)','(#2.17)','(#5.19)','Airport 1975','Anna Karenina','Arashi o yobu otoko','Blaze of Glory','Born to Be Bad','Call Me Mister','Chain of Events','Der Hexer','Galileo','Game 5','Kid Galahad','Of Human Bondage','Once a Thief','Overland Mail','Pacific Blackout','Scrooge','Side Street','Sister Kenny','Smile','Special Agent','Tango','The Comic','The Gold Rush','The Last Man','The Losers','The Loves of Carmen','The Reckoning','The Second Time Around','The Snake Pit','The Trial','The Witch','Three Kids and a Queen'))
