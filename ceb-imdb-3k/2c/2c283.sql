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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Atp','Australia:PG','Canada:13+','Canada:R','Finland:K-18','Germany:16','Germany:18','Iceland:L','India:U','Sweden:11','Sweden:7','UK:12','UK:18','UK:PG'))
AND (mi2.info IN ('Canada','India','Italy','Norway','Philippines','Soviet Union','UK','USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.373)','(#1.835)','(#4.18)','(#5.21)','A Christmas Story','A Class Act','A Hard Days Night','Breakout','Crime of Passion','Flash Point','Night of 100 Stars III','Pepe','Queen for a Day','Robert Kennedy & His Times','Six Bridges to Cross','Stella','The Apple','The Believers','The Wanderers','World of Sport'))
