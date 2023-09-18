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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('MET:100 m','MET:120 m','MET:150 m','MET:180 m','MET:300 m','MET:500 m','PCS:Kinescope','PCS:Panavision','PCS:Shawscope','PFM:35 mm','PFM:70 mm','RAT:1.36 : 1','RAT:1.37 : 1','RAT:1.85 : 1'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('composer','editor','guest'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.92)','(#2.21)','(#4.24)','A Stitch in Time','A-Haunting We Will Go','Cavalleria rusticana','Das kalte Herz','Dirty Harry','Dixie','Follow the Sun','Honeymoon','I Dood It','I Take This Woman','Illegal Entry','Inside Job','Law and Disorder','M','Manhunt','Sergeant York','Target','Tennessee Johnson','The Baby','The Crystal Ball','The Grapes of Wrath','The Man Who Came to Dinner','The Sisters','The Undefeated','The Verdict','Time to Kill','Untamed','Vierter Teil'))
