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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:18','Argentina:Atp','Australia:R','Canada:R','Finland:K-8','UK:18','USA:PG','USA:Passed'))
AND (mi2.info IN ('101','107','109','111','120','61','75','8','91','USA:7'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('costume designer','director','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#3.15)','(#3.5)','(#4.34)','(#5.20)','(#5.3)','(#6.11)','(#6.19)','A Friend in Need','Career','Conspiracy','Dead or Alive','Dilemma','Duffys Tavern','Emmerdale Farm','Foreign Correspondent','Glamour Boy','Gone with the Wind','Key to the City','Killer McCoy','Kitty Foyle','Little Girl Lost','Love','Man Hunt','Marooned','Olympia 1. Teil - Fest der Völker','One More River','Out of the Past','Ransom','Santa','She Couldnt Say No','The Christmas Story','The Magician','The Man Outside','The Man Who Knew Too Much','The Star Maker','The Winslow Boy','Up the Junction','World of Sport'))
