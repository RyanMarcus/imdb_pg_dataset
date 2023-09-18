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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Crime','Drama','Family','Game-Show','Music','Short','Sport'))
AND (mi2.info IN ('Argentina','Denmark','Italy','Portugal','South Korea'))
AND (kt.kind in ('tv movie','video movie'))
AND (rt.role in ('director','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.102)','(#1.49)','(#1.87)','(#2.35)','(#3.2)','(#4.2)','(#4.6)','(#5.4)','Airport 1975','Boy Meets Girl','Brigadoon','Cash and Carry','Dirty Harry','Ghost Town','Ginger','Golden Boy','Hard Times','I Dood It','Inferno','La dame aux camélias','Le bossu','Lets Dance','Little Women','Love Story','Luxury Liner','Mission to Moscow','Playmates','Pressure','Road to Rio','Storm Warning','The Deserter','The Exile','The Godfather','The Hound of the Baskervilles','The Ladies Man','The Shadow','To Catch a Thief'))
