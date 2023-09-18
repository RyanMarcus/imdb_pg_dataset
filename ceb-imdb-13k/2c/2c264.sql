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
AND (it1.id in ('1'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('100','107','59','90','UK:30','UK:50','USA:25','USA:90'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv series','video game','video movie'))
AND (rt.role in ('composer','costume designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.33)','(#1.49)','(#1.60)','(#2.13)','(#4.8)','(#6.1)','A Dispatch from Reuters','A Farewell to Arms','A Friend in Need','A House Divided','Another World','Anything Goes','Best Foot Forward','Beyond a Reasonable Doubt','Crack-Up','El malvado Carabel','Escape','Follow the Boys','Föltámadott a tenger','Hostage','Jacqueline','Meet Me in St. Louis','Number 96','Paid in Full','Secrets','Stage Fright','Success Story','Terror','The Final Hour','The Hound of the Baskervilles','The Hunters','The Jackpot','The Professional','The Sea of Grass','Today','Vierter Teil'))
