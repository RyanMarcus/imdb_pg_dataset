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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('East Germany','France','Greece','Japan','Mexico','Portugal','Romania','Sweden','Switzerland','USA','Yugoslavia'))
AND (mi2.info IN ('LAB:Technicolor, USA','MET:300 m','OFM:16 mm','OFM:35 mm','PCS:Kinescope','PCS:Spherical','PFM:70 mm','RAT:1.20 : 1','RAT:1.33 : 1','RAT:1.37 : 1','RAT:1.66 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('tv movie','video game','video movie'))
AND (rt.role in ('actor','cinematographer','costume designer','editor','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1)','(#1.30)','(#1.89)','(#1.96)','(#3.4)','(#4.35)','(#6.17)','(#7.3)','A Matter of Honor','A Star Is Born','A Tree Grows in Brooklyn','All My Children','Arashi o yobu otoko','Clash by Night','Daddy Long Legs','Delayed Action','Double Date','Fools Gold','Fünfter Teil','Going Home','Jane Eyre','Jeder stirbt für sich allein','Krach im Hinterhaus','Lady in the Dark','Law and Order','Les Misérables','Linda','Mirage','Music Hath Charms','Once a Thief','Pittsburgh','Quinta puntata','Rózsa Sándor','Samson and Delilah','Sarajevski atentat','Stranger in Town','Tennessee Johnson','The Bait','The Best Years of Our Lives','The Big Noise','The Big Show','The Eurovision Song Contest','The Hospital','The Jackpot','The Last Frontier','The Snows of Kilimanjaro','The Thanksgiving Story','Unser Sandmännchen'))
