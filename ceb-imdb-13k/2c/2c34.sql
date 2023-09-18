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
AND (it1.id in ('7'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Metrocolor','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor','MET:300 m','PCS:Panavision','RAT:1.78 : 1','RAT:2.00 : 1','RAT:4:3'))
AND (mi2.info IN ('Argentina:Atp','Australia:G','Singapore:PG','South Korea:15','UK:18','UK:U','USA:X','West Germany:6'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.59)','(#4.33)','Anna proletárka','Cinderella','Erster Teil','Law and Order','Love and Marriage','Red, Hot and Blue','The Big Broadcast of 1936','The Inheritance','The Lost City','Topaze'))
